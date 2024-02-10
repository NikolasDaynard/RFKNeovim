-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

end

-- Define a Lua function to handle cursor movement
function M.handle_cursor_moved()
  print(vim.api.nvim_buf_get_lines(0, vim.fn.line('.') - 1, vim.fn.line('.'), true)[1]:sub(vim.fn.col('.'), vim.fn.col('.')))
end

-- Attach the Lua function to the CursorMoved event
vim.api.nvim_exec([[
  augroup CursorMovedAutocmd
  autocmd!
  autocmd CursorMoved * lua require'RFKNeovim'.handle_cursor_moved()
  augroup END
]], false)

return M
