CREATE PROCEDURE [StoreProcedure]
AS
BEGIN
EXEC sp_execute_external_script @language = N'R'
    , @script = N'_RCODE_'
    , @input_data_1 = N'_INPUT_QUERY_'
--- Edit this line to handle the output data frame.
    WITH RESULT SETS ((
	medallion nvarchar(max),
	hack_license nvarchar(max),
	new_key nvarchar(max)
	));
END;
