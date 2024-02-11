-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local things = require'RFKthings'

function M.generateRandomLineForCharacters(characterSet)
  math.randomseed(os.time())
  local usedLines = {}
  for i = 1, #characterSet do 
    local char = characterSet:sub(i,i)
    -- local randomLine(vim.cmd(rand() % things.getThingsLength)) + 1
    -- if !usedLines.contains(randomLine) then
      usedLines[i] = (math.random(2, things.getThingsLength())) -- indexed from 2 because 1 is the kitten
    -- end
  end
  usedLines[math.random(1, #characterSet)] = 1 -- set one to be the kitten
  return usedLines
end

return M
