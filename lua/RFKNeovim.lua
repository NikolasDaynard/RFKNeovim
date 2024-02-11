-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local utils = require'RFKutils'
local things = require'RFKthings'

local enabled = false

function M.toggle_enabled()
  enabled = not enabled
  -- print("ROBOT: TIME TO FIND:", enabled)
  M.bufferCharacterset = utils.getCharactersInBufferUsedInCharacterSet(M.customCharacterset)
  M.linesForCharacters = utils.generateRandomLineForCharacters(M.bufferCharacterset)
end

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

  -- excludes unicode characters from the completion
  M.limit_Characterset = options.limit_Characterset
  if M.limit_Characterset == nil then
    M.limit_Characterset = true
  end
  -- allow the user to set the a custom Characterset
  M.customCharacterset = options.customCharacterset
  if M.customCharacterset ~= nil then
    M.limit_Characterset = true
  else
    M.customCharacterset =
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_!`~@#$%^&*()-=+*/[]{}\\|;:\'\",.<>?-'
  end
  M.bufferCharacterset = utils.getCharactersInBufferUsedInCharacterSet(M.customCharacterset)
  M.linesForCharacters = utils.generateRandomLineForCharacters(M.bufferCharacterset)
end

function M.handle_cursor_moved()
  if enabled == true then
    -- get the character under the cursor
    local char = vim.api.nvim_buf_get_lines(0, vim.fn.line('.') - 1, vim.fn.line('.'), true)[1]:sub(vim.fn.col('.'), vim.fn.col('.'))
    -- start at 1, use plaintext? why is use plaintext an option, why would I ever not want that???
    if string.find(M.bufferCharacterset, char, 1, true) then
      local startPos, endPos = string.find(M.bufferCharacterset, char, 1, true)
      local thingIndex = M.linesForCharacters[startPos]
      print(things.getThing(thingIndex))
    end
  end
end

-- Attach the Lua function to the CursorMoved event
vim.api.nvim_exec([[
  augroup CursorMovedAutocmd
  autocmd!
  autocmd CursorMoved * lua require'RFKNeovim'.handle_cursor_moved()
  augroup END
]], false)

-- vim.cmd([[command! RFK lua require'RFKNeovim'.handle_cursor_moved()]])
vim.cmd([[command! RFK lua require'RFKNeovim'.toggle_enabled()]])

return M
