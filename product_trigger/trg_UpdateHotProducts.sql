USE [WebFashion1]
GO
/****** Object:  Trigger [dbo].[trg_UpdateHotProducts]    Script Date: 2/20/2025 9:54:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_UpdateHotProducts]
ON [dbo].[products]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Ngăn chặn trigger bị lặp vô hạn
    IF (TRIGGER_NESTLEVEL() > 1) RETURN;

    -- Nếu tất cả total_sold đều bằng 0, đặt hot = 0 cho toàn bộ sản phẩm
    IF NOT EXISTS (SELECT 1 FROM products WHERE total_sold > 0)
    BEGIN
        UPDATE products SET hot = 0;
        RETURN;
    END;

    -- Đặt hot = 0 trước khi cập nhật hot = 1 cho top 8 sản phẩm bán chạy nhất
    UPDATE products SET hot = 0;

    -- Cập nhật hot = 1 cho 8 sản phẩm có total_sold cao nhất
    UPDATE products
    SET hot = 1
    WHERE id IN (
        SELECT TOP 8 id 
        FROM products 
        WHERE total_sold > 0
        ORDER BY total_sold DESC
    );
END;
