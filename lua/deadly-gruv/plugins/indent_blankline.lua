local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local cp = require('deadly-gruv.colors').cp;
local sp = require('deadly-gruv.colors').sp;

local base = require('deadly-gruv.base');

local M = lush(function()
  return {
    IndentBlanklineIndent1 { fg = base.ColorColumn.bg },
    IndentBlanklineIndent2 { fg = base.CursorLine.bg },
    IndentBlanklineIndent3 { fg = base.Visual.bg },
    IndentBlanklineIndent4 { fg = sp.inconspicious[4] },

    IndentBlanklineScope { fg = cp.blue.morning, gui = "bold" },
  }
end)

return M;
