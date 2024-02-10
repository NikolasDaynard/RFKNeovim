-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local things = require'things'

-- rand() % 16 = 0-15
function M.generateRandomLineForCharacters(characterSet)
  local usedLines = {}
  for i = 1, #characterSet do
    local char = characterSet:sub(i,i)
    -- local randomLine(vim.cmd(rand() % things.getThingsLength)) + 1
    -- if !usedLines.contains(randomLine) then
      usedLines.append((rand() % things.getThingsLength) + 1) -- indexed from 1
    -- end
  end
  return usedLines
end

return M
