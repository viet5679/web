USE [WebFashion1]
GO
/****** Object:  Trigger [dbo].[trg_update_product_total_sold]    Script Date: 2/20/2025 9:55:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_update_product_total_sold]
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