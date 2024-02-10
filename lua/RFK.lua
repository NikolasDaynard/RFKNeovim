-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local utils = require'utils'
local vendorDep = require'vendorDep'

function M.setup(options)
  M.objectsPer100Lines = options.objectsPer100Lines or M.objectsPer100Lines or 20

end

function M.on_mouse_move()
  -- Your code here
  print("Mouse moved!")
end
vim.cmd([[
function! HandleCursorMoved()
  " Your custom actions here
  " For example, echoing the cursor position
  echo "Cursor moved to line " . line('.') . " column " . col('.')
endfunction
]])

return M
