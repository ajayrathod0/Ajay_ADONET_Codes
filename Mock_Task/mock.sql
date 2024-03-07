Create PROCEDURE uspGetTableData
    @TableName NVARCHAR(255),
    @ColumnName NVARCHAR(255)
AS
BEGIN
    DECLARE @SqlQuery NVARCHAR(MAX)

    IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @TableName)
       AND EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = @TableName AND COLUMN_NAME = @ColumnName)
    BEGIN
        SET @SqlQuery = 'SELECT ' + QUOTENAME(@ColumnName) + ' FROM ' + QUOTENAME(@TableName)

        EXEC sp_executesql @SqlQuery
    END
    ELSE
    BEGIN
        PRINT 'Invalid Table or Column Names'
    END
END


go

EXEC uspGetTableData @TableName = 'student', @ColumnName = 'name';
