local M = {}

function M.getData(line)
    local data = {
        "data1",
        "data2",
        "data3",
        -- Add more data as needed
    }
    return data[line]
end

return M