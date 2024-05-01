local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local mc = require('deadly-gruv.colors').mc;

local base = require('deadly-gruv.base')
local mg = require('deadly-gruv.meta_groups')

local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Make targets.
    sym'@function.make' { fg = base.Directory.fg, gui = "bold" },
  }
end)

return M;
