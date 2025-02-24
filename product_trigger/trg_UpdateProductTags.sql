USE [LouisVuitton]
GO
/****** Object:  Trigger [dbo].[trg_UpdateProductTags]    Script Date: 2/24/2025 11:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[trg_UpdateProductTags]
ON [dbo].[products]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Xóa tag "NEW" khỏi tất cả sản phẩm trước khi cập nhật lại
    UPDATE products
    SET tag = REPLACE(tag, 'NEW, ', '')
    WHERE tag LIKE '%NEW, %';

    -- Lấy danh sách 4 sản phẩm mới nhất và cập nhật tag NEW
    UPDATE p
    SET p.tag = 'NEW, ' + ISNULL(p.tag, '')
    FROM products p
    INNER JOIN (
        SELECT TOP 4 id FROM products ORDER BY created_at DESC
    ) AS TopNewProducts ON p.id = TopNewProducts.id;

    -- Cập nhật lại tag cho toàn bộ sản phẩm dựa trên điều kiện mới
    UPDATE p
    SET p.tag = 
        LTRIM(RTRIM(
            CASE 
                WHEN EXISTS (
                    SELECT 1 FROM (SELECT TOP 4 id FROM products ORDER BY created_at DESC) AS tnp WHERE tnp.id = p.id
                ) THEN 'NEW, ' ELSE '' 
            END +
            CASE 
                WHEN p.sale > 0 THEN 'SALE, ' ELSE '' 
            END +
            CASE 
                WHEN p.hot = 1 THEN 'HOT SELL, ' ELSE '' 
            END
        ))
    FROM products p;

    -- Xóa dấu phẩy cuối cùng nếu có
    UPDATE products
    SET tag = LEFT(tag, LEN(tag) - 2)
    WHERE tag LIKE '%, ';

    -- Nếu tag trống, đặt NULL
    UPDATE products
    SET tag = NULL
    WHERE tag = '';
END;
