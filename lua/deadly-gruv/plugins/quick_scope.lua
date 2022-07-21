local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp
local mg = require("deadly-gruv.meta_groups")

local M = lush(function()
  return {
    QuickScopePrimary({ fg = mg.base.dg_Match.fg.desaturate(5*delta), gui = 'underline' }),
    -- QuickScopeSecondary({ fg = mc.Punctuation.Brackets[1] }),
  }
end)

return M
