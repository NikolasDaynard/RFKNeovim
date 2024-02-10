local M = {}

local M.things = {
  "data1",
  "data2",
  "data3",
  -- Add more data as needed
}

function M.getData(line)

  return M.things[line]
end
function M.getThingsLength()

  return #M.things
end


return M