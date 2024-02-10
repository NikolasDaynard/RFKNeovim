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
      usedLines[i] = (math.random(1, things.getThingsLength())) -- indexed from 1
    -- end
  end
  return usedLines
end
function M.highlightPoint(x, y)
  -- Define the buffer number of the current buffer
  local bufnr = vim.api.nvim_get_current_buf()

  -- Define the highlight group and attributes
  local highlight_group = "MyHighlightGroup"
  local attributes = {
      guifg = "red",  -- Foreground color (for GUI)
      guibg = "none", -- Background color (for GUI)
      ctermfg = "red",  -- Foreground color (for terminal)
      ctermbg = "none", -- Background color (for terminal)
      gui = "",       -- GUI attributes (e.g., "bold", "underline")
      cterm = "",     -- Terminal attributes (e.g., "bold", "underline")
  }

  -- Add highlight to the specified point
  vim.api.nvim_buf_add_highlight(bufnr, -1, highlight_group, x - 1, y - 1, y)
end

return M
