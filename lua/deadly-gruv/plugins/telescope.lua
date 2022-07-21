local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local colors = require('deadly-gruv.colors')
local mc = colors.mc;
local sp = colors.sp;
local cp = colors.cp;

local mg = require('deadly-gruv.meta_groups')

local M = lush(function()
  return {
    --TelescopeSelection { fg = sp.error, bg = sp.error },
    --TelescopeSelectionCaret {},
    --TelescopeMultiSelection {},
    --TelescopeNormal {},
    --TelescopeBorder {},
    --TelescopePromptBorder {},
    --TelescopeResultsBorder {},
    --TelescopePreviewBorder {},
    TelescopeMatching { fg = mg.base.dg_Match.fg.darken(4*delta), bg = mg.base.dg_Match.bg, gui = mg.base.dg_Match.gui },
    --TelescopePromptPrefix { fg = sp.error },
    --TelescopePromptCounter { fg = sp.error },
    --TelescopeResultsComment { bg = sp.error },
    --TelescopePreviewDate { bg = sp.error },
    --TelescopeSelectionCaret { bg = sp.error },
    --TelescopePrompt { fg = sp.error },
    --TelescopeResultsLineNr { bg = sp.error },
  }
end)

return M;
