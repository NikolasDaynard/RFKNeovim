-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local utils = require'RFKutils'
local things = require'things'

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

  -- excludes unicode characters from the completion
  M.limit_Characterset = options.limit_Characterset
  if M.limit_Characterset == nil then
    M.limit_Characterset = true
  end
  -- allow the user to set the a custom Characterset
  M.customCharacterset = options.limit_Characterset
  if M.customCharacterset ~= nil then
    M.limit_Characterset = true
  else
    M.customCharacterset =
    'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_!`~@#$%^&*()-=+[]{}\\|;:\'\",<.>/?'
  end
end

-- Define a Lua function to handle cursor movement
function M.handle_cursor_moved()
  local char = vim.api.nvim_buf_get_lines(0, vim.fn.line('.') - 1, vim.fn.line('.'), true)[1]:sub(vim.fn.col('.'), vim.fn.col('.'))
  if string.find(M.customCharacterset, char) ~= nil then
    -- print(things.getData(2))
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

return M
