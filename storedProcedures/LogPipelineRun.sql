CREATE PROCEDURE LogPipelineRun
    @PipelineName NVARCHAR(100),
    @RunTime DATETIME,
    @Status NVARCHAR(50),
    @RecordCount INT
AS
BEGIN
    INSERT INTO PipelineLog (PipelineName, RunTime, Status, RecordCount)
    VALUES (@PipelineName, @RunTime, @Status, @RecordCount)
END
