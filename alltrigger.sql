SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[UpdateProductStock]
ON [dbo].[product_sizes]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE p
    SET stock_quantity = (
        SELECT COALESCE(SUM(ps.stock_quantity), 0)
        FROM product_sizes ps
        WHERE ps.product_id = p.id
    )
    FROM products p
    INNER JOIN inserted i ON p.id = i.product_id
    WHERE p.category_id IN (1, 3, 5, 6, 7, 8);  -- Chỉ áp dụng cho những category này
END;

/****** Object:  Trigger [dbo].[trg_update_product_stock_on_delete]    Script Date: 2/20/2025 9:55:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[UpdateProductStockOnDelete]
ON [dbo].[product_sizes]
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE p
    SET stock_quantity = (
        SELECT COALESCE(SUM(ps.stock_quantity), 0)
        FROM product_sizes ps
        WHERE ps.product_id = p.id
    )
    FROM products p
    INNER JOIN deleted d ON p.id = d.product_id
    WHERE p.category_id IN (1, 3, 5, 6, 7, 8);  -- Chỉ áp dụng cho những category này
END;

/****** Object:  Trigger [dbo].[trg_update_product_total_sold]    Script Date: 2/20/2025 9:55:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[UpdateProductTotalSold]
ON [dbo].[product_sizes]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật total_sold trong products
    UPDATE p
    SET total_sold = (
        SELECT COALESCE(SUM(ps.total_sold), 0)
        FROM product_sizes ps
        WHERE ps.product_id = p.id
    )
    FROM products p
    WHERE p.category_id IN (1, 3, 5, 6, 7, 8)
    AND EXISTS (
        SELECT 1 FROM inserted i WHERE i.product_id = p.id
        UNION
        SELECT 1 FROM deleted d WHERE d.product_id = p.id
    );
END;

/****** Object:  Trigger [dbo].[trg_decrease_stock_on_sold]    Script Date: 2/20/2025 9:56:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[DecreaseStockOnSold_ProductSizes]
ON [dbo].[product_sizes]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật stock_quantity trong product_sizes
    UPDATE ps
    SET ps.stock_quantity = ps.stock_quantity - (i.total_sold - d.total_sold)
    FROM product_sizes ps
    INNER JOIN inserted i ON ps.product_id = i.product_id AND ps.size_id = i.size_id
    INNER JOIN deleted d ON ps.product_id = d.product_id AND ps.size_id = d.size_id
    WHERE i.total_sold > d.total_sold;  -- Chỉ chạy nếu total_sold tăng
END;






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