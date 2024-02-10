local M = {}

function M.getThing(line)

  return M.RFKthings[line]
end

function M.getThingsLength()

  return #M.RFKthings
end

M.RFKthings = {
  "It's an animal! Sadly though, not the one you are looking for",
  "It's a very riced unix system",
  "It's nothing, just some text",
  "It's something that you can't see",
  "It's a way to exit vim",
  "It's Neovim running on a Nintendo 3DS",
  "It's a colorscheme with a contrast rating of 2.3",
  "It's a terminal with 256 colors",

  
  "There seems to be nothing but noise here",
  -- Add more data as needed
}

return M