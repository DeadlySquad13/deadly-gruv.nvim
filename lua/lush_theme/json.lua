local lush = require('lush')

local delta = require('lush_theme.constants').delta;
local mc = require('lush_theme.colors').ordered_meta_groups;

local M = lush(function()
  return {
    -- * Values.
     jsonBoolean         { fg = mc.Symbols[5] }, --   A string constant: "this is a string"
     jsonNumber         { fg = mc.Symbols[4] }, --   A string constant: "this is a string"
     jsonString         { fg = mc.Symbols[2].darken(3*delta) }, --   A string constant: "this is a string"

    -- * Punctuation.
     jsonKeywordMatch         { fg = mc.Punctuation[1] }, -- A keyword *including* "" and : (I use it for latest).
     jsonNoise         { fg = jsonKeywordMatch.fg }, --   Comma at the end of the statement.
     jsonQuote         { fg = mc.Punctuation[2] }, --   A quote embracing both the keyword and value.
  }
end)

return M;
