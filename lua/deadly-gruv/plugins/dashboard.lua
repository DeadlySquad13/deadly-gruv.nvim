local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local colors = require('deadly-gruv.colors')
local mc = colors.mc;
local sp = colors.sp;
local cp = colors.cp;

local M = lush(function()
  return {
    --DashboardHeader {},
    -- Text on the left at the center.
    DashboardCenter { fg = sp.contrasting[2] },
    DashboardShortcut { fg = sp.secondary[2] },
    --DashboardFooter {},
  }
end)

return M;
