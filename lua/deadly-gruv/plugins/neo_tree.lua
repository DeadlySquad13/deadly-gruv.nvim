local lush = require('lush')

local delta = require('deadly-gruv.constants').delta
local mc = require('deadly-gruv.colors').mc
local sp = require('deadly-gruv.colors').sp
local mg = require('deadly-gruv.meta_groups')
local base = require('deadly-gruv.base')

local M = lush(function()
  return {
    NeoTreeRootName { base.Title }
  }
end)

return M
