local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local sp = require('deadly-gruv.colors').sp;

local M = lush(function()
  return {
    rainbowcol1 { fg = sp.emphasizing[3] },
    rainbowcol2 { fg = rainbowcol1.fg.rotate(6*delta) },
    rainbowcol3 { fg = rainbowcol2.fg.rotate(6*delta) },
    rainbowcol4 { fg = rainbowcol3.fg.rotate(6*delta) },
    rainbowcol5 { fg = rainbowcol4.fg.rotate(6*delta) },
    rainbowcol6 { fg = rainbowcol5.fg.rotate(6*delta) },
    rainbowcol7 { fg = rainbowcol6.fg.rotate(6*delta) },
  }
end)

return M;
