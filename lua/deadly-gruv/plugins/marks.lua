local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local sp = require("deadly-gruv.colors").sp

local M = lush(function()
  return {
    MarkVirtTextHL({ fg = sp.highly_contrasting[5].main.darken(delta), gui = "italic" }),  -- For targeted jumps.
    MarkSignHL({ fg = MarkVirtTextHL.fg.darken(2*delta) }),  -- For targeted jumps.
  }
end)

return M
