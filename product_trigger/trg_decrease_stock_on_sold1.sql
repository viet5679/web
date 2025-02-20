USE [WebFashion1]
GO
/****** Object:  Trigger [dbo].[trg_decrease_stock_on_sold1]    Script Date: 2/20/2025 9:54:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_decrease_stock_on_sold1]
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