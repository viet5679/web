USE [WebFashion1]
GO
/****** Object:  Trigger [dbo].[trg_decrease_stock_on_sold]    Script Date: 2/20/2025 9:56:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_decrease_stock_on_sold]
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
