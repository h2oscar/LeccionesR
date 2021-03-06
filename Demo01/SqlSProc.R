# @InputDataSet: input data frame, result of SQL query execution
# @OutputDataSet: data frame to pass back to SQL

# Test code
 #library(RODBC)
 #channel <- odbcDriverConnect(dbConnection)
#InputDataSet <- sqlQuery(channel, iconv(paste(readLines('~/visual studio 2017/projects/rdemos/demo01/demo01/sqlsproc.query.sql', encoding = 'UTF-8', warn = FALSE), collapse = '\n'), from = 'UTF-8', to = 'ASCII', sub = ''))
 #odbcClose(channel)

#OutputDataSet <- InputDataSet
ComputeDist <- function(pickup_long,pickup_lat,dropoff_long,dropoff_lat) {
    R <- 6371 / 1.609344
    delta_lat <- dropoff_lat - pickup_lat
    delta_long <- dropoff_long - pickup_long
    degrees_to_radians <- pi / 180
    a1 <- sin(delta_lat * degrees_to_radians / 2)
    a2 <- as.numeric(a1) ^ 2
    a3 <- cos(pickup_lat * degrees_to_radians)
    a4 <- cos(pickup_long * degrees_to_radians)
    a5 <- sin(delta_long * degrees_to_radians / 2)
    a6 <- as.numeric(a5) ^ 2
    a <- a2 + a3 * a4 * a6
    c <- 2 * atan2(sqrt(a), sqrt(1 - a))
    d <- R * c
    return(d)

}

OutputDataSet <- InputDataSet
OutputDataSet$distance <- ComputeDist(
InputDataSet$pickup_longitude,
InputDataSet$pickup_latitude,
InputDataSet$dropoff_longitude,
InputDataSet$dropoff_latitude
    )

