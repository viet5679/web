USE [LouisVuitton]
GO
/****** Object:  Trigger [dbo].[trg_UpdateProductTags]    Script Date: 2/21/2025 10:04:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   TRIGGER [dbo].[trg_UpdateProductTags]
ON [dbo].[products]
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Cập nhật lại tag theo điều kiện mới nhất
    UPDATE p
    SET p.tag = 
        LTRIM(RTRIM(
            CASE 
                WHEN DATEDIFF(DAY, p.created_at, GETDATE()) <= 5 THEN 'NEW, ' ELSE '' 
            END +
            CASE 
                WHEN p.sale > 0 THEN 'SALE, ' ELSE '' 
            END +
            CASE 
                WHEN p.hot = 1 THEN 'HOT SELL, ' ELSE '' 
            END
        ))
    FROM products p
    INNER JOIN inserted i ON p.id = i.id;

    -- Xóa dấu phẩy cuối cùng nếu có
    UPDATE products
    SET tag = LEFT(tag, LEN(tag) - 2)
    WHERE tag LIKE '%, ';

    -- Nếu tag trống, đặt NULL
    UPDATE products
    SET tag = NULL
    WHERE tag = '';
END;
