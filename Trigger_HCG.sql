use DB_HCG

DROP TABLE IF EXISTS Preferences;

-- Tự động thêm id đánh số từ S1->Sn
CREATE TRIGGER trg_BeforeInsertPreferences
ON Preferences
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @new_id VARCHAR(10);
    DECLARE @max_id VARCHAR(10);
    DECLARE @description NVARCHAR(MAX);
    DECLARE @id_major VARCHAR(10);
	SELECT TOP 1 @max_id = id
    FROM Preferences
    ORDER BY CAST(SUBSTRING(id, 2, LEN(id)) AS INT) DESC;
    IF @max_id IS NULL
        SET @max_id = 'S0';
    DECLARE inserted_cursor CURSOR FOR
    SELECT description, id_majors
    FROM inserted;
    OPEN inserted_cursor;
    FETCH NEXT FROM inserted_cursor INTO @description, @id_major;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @new_id = 'S' + CAST(CAST(SUBSTRING(@max_id, 2, LEN(@max_id) - 1) AS INT) + 1 AS VARCHAR(10));
        SET @max_id = @new_id;
        INSERT INTO Preferences (id, description, id_majors) 
        VALUES (@new_id, @description, @id_major);
        FETCH NEXT FROM inserted_cursor INTO @description, @id_major;
    END;
    CLOSE inserted_cursor;
    DEALLOCATE inserted_cursor;
END;


-- Tự động thêm id đánh số từ P1->Pn
CREATE TRIGGER trg_BeforeInsertMajors
ON Majors
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @new_id VARCHAR(10);
    DECLARE @name NVARCHAR(255);
	DECLARE @description NVARCHAR(MAX);

    -- Tìm giá trị lớn nhất của cột ID hiện tại
    SELECT TOP 1 @new_id = id
    FROM Majors
    ORDER BY CAST(SUBSTRING(id, 2, LEN(id)) AS INT) DESC;
    -- Nếu bảng rỗng thì bắt đầu từ S1
    IF @new_id IS NULL
        SET @new_id = 'P0';
    -- Tạo giá trị id mới bằng cách tăng số hiện tại
    SET @new_id = 'P' + CAST(CAST(SUBSTRING(@new_id, 2, LEN(@new_id)-1) AS INT) + 1 AS VARCHAR(10));
    -- Lấy dữ liệu từ bảng inserted
    SELECT @name = name, @description = description FROM inserted;
    -- Chèn dữ liệu mới với giá trị id đã sinh ra
    INSERT INTO Majors (id, name, description) 
    VALUES (@new_id, @name, @description);
END;

drop trigger trg_BeforeInsertRules
-- Tự động thêm id đánh số từ L1->Ln
CREATE TRIGGER trg_BeforeInsertRules
ON Rules
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @new_id VARCHAR(10);
    DECLARE @ruleS NVARCHAR(MAX);
    DECLARE @description NVARCHAR(MAX);
    DECLARE @id_major VARCHAR(10);
    DECLARE inserted_cursor CURSOR FOR
    SELECT ruleS, description, id_majors FROM inserted;
    OPEN inserted_cursor;
    FETCH NEXT FROM inserted_cursor INTO @ruleS, @description, @id_major;
    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT TOP 1 @new_id = id
        FROM Rules
        ORDER BY CAST(SUBSTRING(id, 2, LEN(id)) AS INT) DESC;
        IF @new_id IS NULL
            SET @new_id = 'L0';
        SET @new_id = 'L' + CAST(CAST(SUBSTRING(@new_id, 2, LEN(@new_id) - 1) AS INT) + 1 AS VARCHAR(10));
        INSERT INTO Rules (id, ruleS, description, id_majors) 
        VALUES (@new_id, @ruleS, @description, @id_major);
        FETCH NEXT FROM inserted_cursor INTO @ruleS, @description, @id_major;
    END
    CLOSE inserted_cursor;
    DEALLOCATE inserted_cursor;
END;
