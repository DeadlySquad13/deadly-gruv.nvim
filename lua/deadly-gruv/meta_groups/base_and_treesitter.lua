local hsl = require('lush.hsl')
local lush = require('lush')

local delta = require('deadly-gruv.constants').delta

local cp = require('deadly-gruv.colors.color_palette')
local sp = require('deadly-gruv.colors.semantic_palette')
local ch = require('deadly-gruv.colors.color_harmonies')
local mc = require('deadly-gruv.colors').mc;

-- It was a mistake to make meta groups just a collections of colors, it's way
-- easier to make them as an instances of lush syntax groups.
local meta_groups = lush(function()
  return {
    ---@exaple Changes in MiniFiles border when you edit some file in view.
    dg_Changed({ fg = sp.contrasting.green }), -- TODO: Add color to palette.

    --- Matched instances.
    ---@exaple Search results.
    dg_Selection({ fg = sp.highly_contrasting[1].complementary, bg = sp.highly_contrasting[1].main }),
    --- Currently chosen instance from matched instances.
    ---@exaple If incsearch enabled, currently matched string.
    dg_Selected({ fg = sp.highly_contrasting[2].complementary, bg = sp.highly_contrasting[2].main }),
    ---@exaple Matching parentheses.
    dg_Match({ fg = sp.highly_contrasting[2].main, gui = 'underline bold' }),

    -- When |language-mapping| is used (see 'guicursor').
    ---@exaple lCursor during search, f/t...
    dg_Pending({ fg = dg_Selected.bg, bg = dg_Selected.fg, gui = dg_Selected.gui }),

    ---@example LeapMatch (instant match after pressing one key). It should be
    -- more contrasting than dg_Match as it can be anywhere in the window, far
    -- from cursor.
    dg_GlobalMatch({ fg = sp.highly_contrasting[3].main, gui = 'underline bold' }),

    ---@example LabelPrimary of a leap. It labels characters that user has to press to jump.
    dg_LabelPrimary({ fg = sp.highly_contrasting[4].complementary, bg = sp.highly_contrasting[4].main, gui = 'bold' }),
    ---@example LabelSecondary of a leap. It labels characters in second group that user has to press to jump.
    dg_LabelSecondary({ fg = sp.highly_contrasting[5].complementary, bg = sp.highly_contrasting[5].main, gui = 'bold' }),
    -- Not used yet.
    dg_LabelTertiary({ fg = sp.highly_contrasting[3].complementary, bg = sp.highly_contrasting[3].main, gui = 'bold' }),

    dg_Part({ fg = mc.Symbols[4] }),
    dg_ReferenceUrl({ fg = mc.ConstantValues[1] }),
    dg_ReferenceTitle({ fg = mc.Annotations[1] }),


    -- REFACTOR: gui was connected to Title.gui, not sure to which group it
    -- should be connected here.
    dg_Header1({ fg = mc.MarkdownHeaders[1], gui = "bold" }),
    dg_Header2({ fg = mc.MarkdownHeaders[2], gui = Header1.gui }),
    dg_Header3({ fg = mc.MarkdownHeaders[3], gui = Header1.gui }),
    dg_Header4({ fg = mc.MarkdownHeaders[4], gui = Header1.gui }),
    dg_Header5({ fg = mc.MarkdownHeaders[5], gui = Header1.gui }),
    dg_Header6({ fg = mc.MarkdownHeaders[6], gui = Header1.gui }),
  }
end)

return meta_groups
