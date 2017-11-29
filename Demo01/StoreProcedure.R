# @InputDataSet: input data frame, result of SQL query execution
# @OutputDataSet: data frame to pass back to SQL

# Test code
#library(RODBC)
#channel <- odbcDriverConnect(connection = dbConnection)
#InputDataSet <- sqlQuery(channel, iconv(paste(readLines('~/visual studio 2017/projects/rdemos/demo01/demo01/storeprocedure.query.sql', encoding = 'UTF-8', warn = FALSE), collapse = '\n'), from = 'UTF-8', to = 'ASCII', sub = ''))

InputDataSet$new_key <-
paste(
    InputDataSet$hack_license,
    InputDataSet$medallion,
    sep = "_"
    )

#odbcClose(channel)

OutputDataSet <- InputDataSet
