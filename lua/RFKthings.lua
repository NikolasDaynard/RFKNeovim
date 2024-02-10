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
  "It's VSCode on an old computer. On trying to run it, it crashes",
  "It's a very large number",
  "It's a video essay comparing the 2017 and 2021 versions of the same game, but the game has no changes",
  "It's the Game Of Life",
  "It's a spritesheet of a 2d dungeon crawler",
  "It's the ID to a pull request that was closed without being merged",
  "It's glass with an IOR of 1.45",

  "There seems to be nothing but noise here",
  "There it goes again",

  "10,000 instances of a AWS server",

  "A snippet of broken vimscript",
  "A noisy diffusion model",

  "Some chocolates",
}

return M