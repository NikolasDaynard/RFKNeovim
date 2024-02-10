-- ~/.config/nvim/lua/execute_commands/init.lua

local M = {}

local utils = require'utils'
local vendorDep = require'vendorDep'

function M.setup(options)
  M.terminal_size = options.terminal_size or M.terminal_size or 60

end

return M
