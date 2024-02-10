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
  -- Add more data as needed
}

return M