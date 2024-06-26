local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;

local mg = require('deadly-gruv.meta_groups')

local base = require('deadly-gruv.base');
local json = require('deadly-gruv.languages.json');

-- TODO: Refactor json, reuse meta_groups from there instead of directly
-- referecing it's groups.
local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- * Top-level keys: `[tasks]`
    tomlTable { mg.base.dg_Header2 },
    sym'@type.toml' { tomlTable },
    -- * Keys.
    tomlKey { json.jsonKeyword },
    sym'@property.toml' { tomlKey },
    -- * Values.
    -- - A boolean constant.
    tomlBoolean { json.jsonBoolean },
    sym'@boolean.toml' { tomlBoolean },
    -- -- - A number constants.
    tomlInteger { json.jsonNumber },
    sym'@number.toml' { tomlInteger },
    -- TODO: Move to meta_groups.
    tomlFloat { fg = base.Float.fg.darken(2*delta).desaturate(delta) },
    sym'@number.float.toml' { tomlFloat },
    -- - A string constant: "this is a string". Matches @variable from treesitter instead of string because it's used a lot.
    tomlString { json.jsonString },
    sym'@string.toml' { tomlString },
  }
end)

return M;
