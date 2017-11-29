CREATE PROCEDURE [ComputeDistance]
AS
BEGIN
EXEC sp_execute_external_script @language = N'R'
    , @script = N'_RCODE_'
    , @input_data_1 = N'_INPUT_QUERY_'
--- Edit this line to handle the output data frame.
    WITH RESULT SETS ((
		[tipped] int
,tip_amount float
,fare_amount float
,passenger_count int
,trip_time_in_secs int
,trip_distance float
,pickup_datetime datetime
,dropoff_datetime datetime
,pickup_longitude float
,pickup_latitude  float
,dropoff_longitude  float
,dropoff_latitude  float
,distance float
	));
END;
