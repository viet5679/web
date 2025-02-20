USE LouisVuitton
GO
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
        WHEN p.sale > 0 THEN (p.price * 100) / p.sale 
        ELSE p.price 
    END
    FROM products p
    INNER JOIN inserted i ON p.id = i.id;
END;