-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

-- checks if other buffers are open
function M.loadLine(line)

end


function M.closeAllOpenTerminals() -- WIP
  local file = io.open("things.txt", "r")

  if file then
    -- Read the specified line
    local readLine
    for i = 1, 3 do
      readLine = file:read()
      if not readLine then
        break  -- Stop if end of file is reached before desired line
      end
    end

    -- Close the file
    file:close()

    -- Check if the line was read successfully
    if readLine then
      return readLine
    else
      print("End of file reached or error reading the line.")
    end
  else
    print("Failed to open file.")
  end
end

return M
