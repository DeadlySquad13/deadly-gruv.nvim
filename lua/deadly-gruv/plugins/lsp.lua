local lush = require('lush');
local colors = require('deadly-gruv.colors');
local sp = colors.sp;
local mc = colors.mc;
local delta = require('deadly-gruv.constants').delta

local base = require('deadly-gruv.base');

local lsp = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Clases.
    sym'@lsp.type.class'        { fg = mc.ClassSymbols[1] } , -- Constructor calls and definitions: `{}` in Lua, Java constructors, python (pd.Dataframe({column: col}))
  }
end)

return lsp;
