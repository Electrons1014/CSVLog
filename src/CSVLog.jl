module CSVLog
export beginLog, logData
using CSV
using DataFrames

function beginLog(pathName::String, firstRow::Dict)
    CSV.write(pathName, DataFrame(firstRow))
end

function logData(pathName::String, row::Dict)
    log = CSV.write(
    pathName,
    DataFrame(row),
    append=true
    )
end
end