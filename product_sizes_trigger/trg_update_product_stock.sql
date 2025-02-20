USE LouisVuitton
GO
/****** Object:  Trigger [dbo].[trg_update_product_stock]    Script Date: 2/20/2025 9:56:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[trg_update_product_stock]
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