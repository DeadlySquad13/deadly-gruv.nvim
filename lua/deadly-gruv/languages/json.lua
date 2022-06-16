local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;

local M = lush(function()
  return {
    -- * Keys.
    --jsonKeyword { fg = c.error },
    -- * Values.
     jsonBoolean         { fg = mc.Symbols[6] }, --   A string constant: "this is a string"
     jsonNumber         { fg = mc.ClassSymbols[2] }, --   A string constant: "this is a string"
     jsonString         { fg = mc.Symbols[4].darken(3*delta) }, --   A string constant: "this is a string"

    -- * Punctuation.
     jsonKeywordMatch         { fg = mc.Punctuation[1] }, -- A keyword *including* "" and : (I use it for latest).
     jsonNoise         { fg = jsonKeywordMatch.fg }, --   Comma at the end of the statement.
     jsonQuote         { fg = mc.Punctuation[2] }, --   A quote embracing both the keyword and value.
  }
end)

return M;
