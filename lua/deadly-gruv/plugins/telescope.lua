local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local colors = require('deadly-gruv.colors')
local mc = colors.mc;
local sp = colors.sp;
local cp = colors.cp;

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
    --TelescopeMatching {},
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
