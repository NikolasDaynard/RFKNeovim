local M = {}

function M.getData(line)

  return M.things[line]
end
function M.getThingsLength()

  return #M.things
end

local M.things = {
  "data1",
  "data2",
  "data3",
  -- Add more data as needed
}

return M