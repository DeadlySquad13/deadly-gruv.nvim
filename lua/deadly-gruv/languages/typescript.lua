local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp
local treesitter = require("deadly-gruv.plugins.treesitter")
local base = require("deadly-gruv.base")

local M = lush(function()
  return {
    -- typescriptTSFunction({ treesitter.TSFunction }),
    -- typescriptTSFunctionDeclaration({
    --   fg = treesitter.TSFunction.fg.rotate(delta),
    --   bg = treesitter.TSFunction.bg,
    --   gui = treesitter.TSFunction.gui,
    -- }),
    -- typescriptTSKeywordExport({ treesitter.TSInclude }),
    -- jsdocTSKeyword({ fg = base.Comment.fg.mix(treesitter.TSInclude.fg, 70), gui = "italic" }),
    -- typescriptTSVariableBuiltin({ fg = treesitter.TSVariableBuiltin.fg, gui = "italic" }),

    -- typescriptTSKeyword({ treesitter.TSInclude }),
    -- typescriptTSKeywordReturn({ treesitter.TSKeywordReturn }),
    -- typescriptReserved({ base.ApprenticeAqua }),
    -- typescriptLabel({ base.ApprenticeAqua }),
    -- typescriptIdentifier({ base.ApprenticeOrange }),
    -- typescriptBraces({ base.ApprenticeOrange }),
    -- typescriptEndColons({ base.ApprenticeFg1 }),
    -- typescriptDOMObjects({ base.ApprenticeFg1 }),
    -- typescriptAjaxMethods({ base.ApprenticeFg1 }),
    -- typescriptLogicSymbols({ base.ApprenticeOrange }),
    -- typescriptDocSeeTag({ base.Comment }),
    -- typescriptDocParam({ base.Comment }),
    -- typescriptDocTags({ base.Comment }),
    -- typescriptGlobalObjects({ base.ApprenticeFg1 }),
    -- typescriptParens({ base.ApprenticeOrange }),
    -- typescriptOpSymbols({ base.ApprenticeOrange }),
    -- typescriptHtmlElemProperties({ base.ApprenticeFg1 }),
    -- typescriptNull({ base.ApprenticePurple }),
    -- typescriptInterpolationDelimiter({ base.ApprenticeAqua }),
    -- typescriptArrowFunc({ base.ApprenticeFg1 }),
    -- typescriptCharacter({ base.ApprenticeOrange }),
    -- typescriptUnion({ base.ApprenticeOrange }),
    -- typescriptDotNotation({ base.ApprenticeOrange }),
    -- typescriptGlobalObjectDot({ typescriptDotNotation }),
  }
end)

return M
