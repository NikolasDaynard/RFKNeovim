local M = {}

function M.getThing(line)

  return M.RFKthings[line]
end

function M.getThingsLength()

  return #M.RFKthings
end

M.RFKthings = {
  "data1",
  "data2",
  "data3",
  -- Add more data as needed
}

return M