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
  rand = math.random(1, #characterSet)
  usedLines[rand] = 1 -- set one to be the kitten
  -- print(rand)
  print(characterSet, rand)
  return usedLines
end

function M.getCharactersInBufferUsedInCharacterSet(characterSet) 
  str = getBufferString()
  charactersInBuffer = ''
  for i = 1, #str do
    char = str:sub(i,i)
    if string.find(characterSet, char, 1, true) and not string.find(charactersInBuffer, char, 1, true) then
      charactersInBuffer = charactersInBuffer .. char
    end
  end
  return charactersInBuffer
end

function getBufferString() 
  local content = vim.api.nvim_buf_get_lines(0, 0, vim.api.nvim_buf_line_count(0), false)
  return table.concat(content, "\n")
end

return M
