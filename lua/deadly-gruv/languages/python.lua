local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local mc = require('deadly-gruv.colors').mc;

local python = lush(function()
  return {
    -- * Values.
     --jsonBoolean         { fg = mc.Symbols[5] }, --   A string constant: "this is a string"
     --jsonNumber         { fg = mc.Symbols[4] }, --   A string constant: "this is a string"
    -- Unfortunately, in Python there's too much reliance on strings, so we
    -- will highlight it as Symbol.
     pythonTSString         { fg = mc.Symbols[4].darken(3*delta) }, --   A string constant: "this is a string"

     --* Punctuation.
     --jsonKeywordMatch         { fg = mc.Punctuation[1] },  A keyword *including* "" and : (I use it for latest).
     --jsonNoise         { fg = jsonKeywordMatch.fg },    Comma at the end of the statement.
     --jsonQuote         { fg = mc.Punctuation[2] },    A quote embracing both the keyword and value.
  }
end)

return python;
