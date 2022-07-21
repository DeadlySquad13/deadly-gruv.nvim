local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp
local base = require("deadly-gruv.base")

local M = lush(function()
  return {
    markdownH1({ fg = mc.MarkdownHeaders[1], gui = base.Title.gui }), -- Default value just need it for transformations below.
    markdownH2({ fg = mc.MarkdownHeaders[2], gui = markdownH1.gui }),
    markdownH3({ fg = mc.MarkdownHeaders[3], gui = markdownH1.gui }),
    markdownH4({ fg = mc.MarkdownHeaders[4], gui = markdownH1.gui }),
    markdownH5({ fg = mc.MarkdownHeaders[5], gui = markdownH1.gui }),
    markdownH6({ fg = mc.MarkdownHeaders[6], gui = markdownH1.gui }),
  }
end)

return M
