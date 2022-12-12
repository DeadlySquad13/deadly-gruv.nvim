local hsl = require("lush.hsl")
local lush = require("lush")

local delta = require("deadly-gruv.constants").delta

local cp = require("deadly-gruv.colors.color_palette")
local sp = require("deadly-gruv.colors.semantic_palette")
local ch = require("deadly-gruv.colors.color_harmonies")

-- It was a mistake to make meta groups just a collections of colors, it's way
-- easier to make them as an instances of lush syntax groups.
local meta_groups = lush(function()
  return {
    --- Matched instances.
    ---@exaple Search results.
    dg_Selection({ fg = sp.highly_contrasting[1].complementary, bg = sp.highly_contrasting[1].main }),
    --- Currently chosen instance from matched instances.
    ---@exaple If incsearch enabled, currently matched string.
    dg_Selected({ fg = sp.highly_contrasting[2].complementary, bg = sp.highly_contrasting[2].main }),
    ---@exaple Matching parentheses.
    dg_Match({ fg = sp.highly_contrasting[2].main, gui = "underline bold" }),
  }
end)

return meta_groups
