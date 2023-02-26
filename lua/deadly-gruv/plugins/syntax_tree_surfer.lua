local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp
local mg = require("deadly-gruv.meta_groups")

local M = lush(function()
  return {
    STSHighlight({ mg.base.dg_LabelPrimary }), -- For targeted jumps.
  }
end)

return M
