local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;

local base = require('deadly-gruv.base');

-- TODO: Move all used base.Something into mega_groups.
-- Add modified variants of base groups as meta_groups too.
local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- * Keys.
    jsonKeyword { fg = mc.Symbols[4].darken(delta).saturate(delta) },
    sym'@property.json' { jsonKeyword },
    -- * Values.
    -- jsonBoolean { fg = mc.Symbols[6] },              --   A boolean constant.
    -- jsonNumber { fg = mc.ClassSymbols[2] },          --   A number constant.
    -- jsonString { fg = mc.Symbols[5] },               -- A string constant: "this is a string". Matches @variable from treesitter instead of string because it's used a lot.
    -- - A boolean constant.
    jsonBoolean { fg = base.Boolean.fg.darken(3*delta) },
    sym'@boolean.json' { jsonBoolean },
    -- - A number constant.
    jsonNumber { fg = base.Number.fg.darken(2*delta).desaturate(delta) },
    sym'@number.json' { jsonNumber },
    -- - A string constant: "this is a string". Matches @variable from treesitter instead of string because it's used a lot.
    jsonString { fg = base.String.fg.darken(2*delta) },
    sym'@string.json' { jsonString },

    -- * Punctuation.
    -- - A keyword *including* "" and : (I use it for latest).
    jsonKeywordMatch { fg = mc.Punctuation[1] },
    -- - Comma at the end of the statement.
    jsonNoise { fg = jsonKeywordMatch.fg },

    -- No direct equivalent in treesitter for the above groups. Delimiter is
    -- used for both ':' and ','.
    sym'@punctuation.delimiter.json' { jsonKeywordMatch },

    -- - A quote embracing both the keyword and value.
    jsonQuote { fg = mc.Punctuation[2] },
    sym'@conceal.json' { jsonQuote },
  }
end)

return M;
