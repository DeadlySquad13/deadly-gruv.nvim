local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local sp = require('deadly-gruv.colors').sp;
local base = require('deadly-gruv.base');
local mg = require('deadly-gruv.meta_groups')

local M = lush(function()
  return {
     MiniFilesNormal { fg = base.Normal.fg, bg = base.Normal.bg },
     MiniFilesBorder { fg = base.Normal.fg, bg = base.Normal.bg },
     MiniFilesBorderModified { mg.base.dg_Changed },
     MiniFilesTitleFocused { gui = 'bold' },
  }
end)

return M;
