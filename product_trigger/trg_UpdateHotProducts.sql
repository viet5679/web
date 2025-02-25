create TRIGGER [dbo].[trg_UpdateHotProducts]
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
