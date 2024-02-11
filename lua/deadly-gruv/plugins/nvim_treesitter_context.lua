local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local base = require('deadly-gruv.base');

local M = lush(function()
  return {
     TreesitterContext { bg = base.Normal.bg.desaturate(delta).darken(2*delta) },
  }
end)

return M;
