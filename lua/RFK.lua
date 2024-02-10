-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

end

function M.on_mouse_move()
  -- Your code here
  print("Mouse moved!")
end

vim.cmd[[
  augroup cursor_moved
    autocmd!
    autocmd CursorMoved FileName source <afile> | execute 'lua foo(arg1,arg2)'
  augroup end
]]

return M
