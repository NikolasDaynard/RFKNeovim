-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

-- checks if other buffers are open
function M.loadLine(line)
  local file = io.open("things.txt", "r")

  if file then
    -- Read the specified line
    local readLine
    for i = 1, line do
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


function M.closeAllOpenTerminals() -- WIP
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if string.find(string.lower(vim.api.nvim_buf_get_name(buf)), 'gradlew') and M.hasOtherOpenBuffers() and vim.api.nvim_buf_get_name(buf) then
      vim.cmd(':q')
    end
  end
end

return M
