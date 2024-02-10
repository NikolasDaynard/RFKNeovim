-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

end

-- Define a Lua function to handle cursor movement
function M.handle_cursor_moved()
  -- Your custom actions here
  -- For example, echoing the cursor position
  print("Cursor moved to line " .. vim.fn.line('.') .. " column " .. vim.fn.col('.'))
end

-- Attach the Lua function to the CursorMoved event
vim.api.nvim_exec([[
  augroup CursorMovedAutocmd
  autocmd!
  autocmd CursorMoved * lua require'RFKNeovim'.handle_cursor_moved()
  augroup END
]], false)

return M
