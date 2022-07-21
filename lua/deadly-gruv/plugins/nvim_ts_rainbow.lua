local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local sp = require('deadly-gruv.colors').sp;

local M = lush(function()
  return {
    rainbowcol1 { fg = mc.Punctuation.Brackets[1] },
    rainbowcol2 { fg = mc.Punctuation.Brackets[2] },
    rainbowcol3 { fg = mc.Punctuation.Brackets[3] },
    rainbowcol4 { fg = mc.Punctuation.Brackets[4] },
    rainbowcol5 { fg = mc.Punctuation.Brackets[5] },
    rainbowcol6 { fg = mc.Punctuation.Brackets[6] },
    rainbowcol7 { fg = mc.Punctuation.Brackets[7] },
  }
end)

return M;
