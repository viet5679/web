
-- Bảng Product-------------------------------------------------------------------------------
/****** Object:  Trigger [dbo].[trg_decrease_stock_on_sold]    Script Date: 2/20/2025 9:56:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UpdateHotProducts]
ON [dbo].[products]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Ngăn chặn trigger bị lặp vô hạn
    IF (TRIGGER_NESTLEVEL() > 1) RETURN;

    -- Nếu không có sản phẩm nào bán được, đặt tất cả hot = 0 và dừng
    IF NOT EXISTS (SELECT 1 FROM products WHERE total_sold > 0)
    BEGIN
        UPDATE products SET hot = 0;
        RETURN;
    END;

    -- Đặt hot = 0 trước khi cập nhật hot = 1 cho top 8 sản phẩm bán chạy nhất
    UPDATE products SET hot = 0;

    -- Cập nhật hot = 1 cho 8 sản phẩm có total_sold cao nhất
    UPDATE p
    SET hot = 1
    FROM products p
    INNER JOIN (
        SELECT TOP 8 id 
        FROM products 
        WHERE total_sold > 0
        ORDER BY total_sold DESC
    ) AS TopHot ON p.id = TopHot.id;
END;

/****** Object:  Trigger [dbo].[UpdateProductTags]    Script Date: 2/27/2025 10:34:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UpdateProductTags]
ON [dbo].[products]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Lấy danh sách 4 sản phẩm mới nhất theo created_at, nếu trùng thì chọn id lớn hơn
    WITH TopNewProducts AS (
        SELECT TOP 4 id FROM products ORDER BY created_at DESC, id DESC
    )
    
    -- Cập nhật tag, ưu tiên NEW, sau đó SALE hoặc %
    UPDATE p
    SET p.tag =
        CASE 
            WHEN EXISTS (SELECT 1 FROM TopNewProducts WHERE id = p.id) THEN 'NEW' 
            WHEN p.sale > 0 AND p.sale <= 20 THEN 'SALE' 
            WHEN p.sale > 20 THEN CAST(p.sale AS VARCHAR(10)) + '%' 
            ELSE NULL 
        END
    FROM products p;
END;

/****** Object:  Trigger [dbo].[trg_UpdateTotalPay]    Script Date: 2/20/2025 9:53:31 AM ******/
SET ANSI_NULLS ON

/****** Object:  Trigger [dbo].[trg_UpdateTotalPay]    Script Date: 2/20/2025 9:53:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[trg_UpdateTotalPay]
ON [dbo].[products]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Chặn vòng lặp vô hạn
    IF (TRIGGER_NESTLEVEL() > 1) RETURN;

    UPDATE p
    SET total_pay = CASE 
        WHEN p.sale > 0 THEN p.price - (p.price *  p.sale) / 100
        ELSE p.price 
    END
    FROM products p
    INNER JOIN inserted i ON p.id = i.id;
END;

/****** Object:  Trigger [dbo].[trg_decrease_stock_on_sold1]    Script Date: 2/20/2025 9:54:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[DecreaseStockOnSold_Products]
ON [dbo].[products]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Chặn vòng lặp vô hạn
    IF (TRIGGER_NESTLEVEL() > 1) RETURN;

    -- Cập nhật stock_quantity, chỉ áp dụng nếu category_id **KHÔNG** thuộc (1, 3, 5, 6, 7, 8)
    UPDATE p
    SET p.stock_quantity = p.stock_quantity - (i.total_sold - d.total_sold)
    FROM products p
    INNER JOIN inserted i ON p.id = i.id
    INNER JOIN deleted d ON p.id = d.id
    WHERE i.total_sold > d.total_sold  -- Chỉ cập nhật nếu total_sold tăng
          AND p.category_id NOT IN (1, 3, 5, 6, 7, 8); -- Trừ các category này
END;



/****** Object:  Trigger [dbo].[trg_UpdateProductStock]    Script Date: 3/27/2025 10:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   TRIGGER [dbo].[trg_UpdateProductStock]
ON [dbo].[orders]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật stock_quantity và total_sold trong bảng products
    UPDATE p
    SET 
        p.stock_quantity = p.stock_quantity - od.quantity,
        p.total_sold = p.total_sold + od.quantity
    FROM products p
    INNER JOIN order_details od ON p.id = od.product_id
    INNER JOIN inserted i ON od.order_id = i.id
    INNER JOIN deleted d ON d.id = i.id
    WHERE d.status = 'Processing' AND i.status = 'Delivered';

END;



/****** Object:  Trigger [dbo].[trg_UpdateProductRating]    Script Date: 3/27/2025 10:49:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   TRIGGER [dbo].[trg_UpdateProductRating]
ON [dbo].[rating]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật total_ratings và total_stars (trung bình số sao) trong bảng products
    UPDATE p
    SET 
        p.total_ratings = (SELECT COUNT(*) FROM rating r WHERE r.product_id = p.id),
        p.total_stars = 
            CASE 
                WHEN (SELECT COUNT(*) FROM rating r WHERE r.product_id = p.id) = 0 
                THEN 0
                ELSE (SELECT SUM(r.number_starts) FROM rating r WHERE r.product_id = p.id) * 1.0 
                     / NULLIF((SELECT COUNT(*) FROM rating r WHERE r.product_id = p.id), 0)
            END
    FROM products p
    WHERE p.id IN (SELECT DISTINCT product_id FROM inserted)
          OR p.id IN (SELECT DISTINCT product_id FROM deleted);
END;
