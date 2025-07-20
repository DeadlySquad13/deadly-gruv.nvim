local lush = require('lush')

local delta = require('deadly-gruv.constants').delta
local cp = require('deadly-gruv.colors').cp
local mc = require('deadly-gruv.colors').mc
local sp = require('deadly-gruv.colors').sp
local mg = require('deadly-gruv.meta_groups')
local base = require('deadly-gruv.base')


-- Table in lua sense: can be either list or map. Returns default value if used
-- as function.
local function TableWithDefault(initial_contents, default_value)
  if not type(initial_contents) == "table" then
    error("Initial contents must be a table")
  end

  local mt = {
    -- Called when table is accessed with an index.
    __index = function(t, k)
      if k == nil then
        return default_value
      end
      -- For numeric keys, act as a list.
      if type(k) == "number" then
        return rawget(t, k)
      end
      -- For other keys, return the default value.
      return default_value
    end,

    -- Called when table is assigned a value.
    __newindex = function(t, k, v)
      -- Only allow numeric indices for list behavior.
      if type(k) == "number" then
        rawset(t, k, v)
      else
        error("Only numeric indices are allowed for list assignment")
      end
    end,

    -- Called when table is called as a function (t()).
    __call = function(t)
      return default_value
    end
  }

  local t = initial_contents or {}
  setmetatable(t, mt)

  return t
end

local blend = TableWithDefault({ 40, 70 }, 40)

local M = lush(function()
  return {
    CmpItemAbbrDeprecated { gui = 'strikethrough' },
    -- CmpItemAbbrMatch { fg = colors.purple, bold = true },
    -- CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },
    -- CmpItemMenu { fg = colors.grey2 },
    CmpItemKindField { mg.base.dg_Field, blend = blend() },
    CmpItemKindProperty { CmpItemKindField },
    CmpItemKindEvent { CmpItemKindField },
    -- CmpItemKindText { fg = colors.grey1 },
    CmpItemKindKeyword { base.Keyword, blend = blend() },
    CmpItemKindEnum { CmpItemKindKeyword }, -- Maybe it's worth adding it's own group.
    CmpItemKindConstant { mg.base.dg_Declaration },
    CmpItemKindConstructor { CmpItemKindConstant },
    CmpItemKindReference { CmpItemKindConstant },
    CmpItemKindFunction { base.Function, blend = blend() },
    CmpItemKindClass { mg.base.dg_ClassContructor, blend = blend() },
    CmpItemKindStruct { CmpItemKindClass },
    CmpItemKindModule { mg.base.dg_Module, blend = blend() },
    CmpItemKindOperator { mg.base.dg_Operator, blend = blend() },
    CmpItemKindVariable { mg.base.dg_Variable, blend = blend[2] },
    CmpItemKindFile { mg.base.dg_File, blend = blend() },
    CmpItemKindUnit { fg = mc.ClassSymbols[1], blend = blend() },
    CmpItemKindSnippet { fg = mc.MetaStatements[1], blend = blend() },
    CmpItemKindFolder { mg.base.dg_Folder, blend = blend() },
    CmpItemKindMethod { mg.base.dg_Method, blend = blend() },
    CmpItemKindValue { CmpItemKindMethod },
    CmpItemKindEnumMember { CmpItemKindMethod },
    CmpItemKindInterface { mg.base.dg_Type, blend = blend() },
    CmpItemKindColor { CmpItemKindInterface },
    CmpItemKindTypeParameter { CmpItemKindInterface },
  }
end)

return M
