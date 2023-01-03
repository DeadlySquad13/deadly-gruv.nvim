local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp
local base = require('deadly-gruv.base')
local treesitter = require("deadly-gruv.plugins.treesitter")

local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- cssTSSelectorClass { fg = sp.error }, -- Class selectors.
    -- cssTSSelectorId { fg =sp.error }, -- Id selectors.
    -- cssTSPunctDelimiterPseudoElement({ fg = sp.contrasting[1], gui = "bold" }),
    -- cssTSType({}), -- Other selectors?.
    -- cssTSTypeBuiltin({ fg = sp.contrasting[1] }), -- Selectors like h3, html and &.

    cssBraces({ gui = "none" }),

    -- cssTSKeyword({ fg = sp.contrasting[1] }), -- @media, @keyframes, from, to and so on.
    -- cssTSFunction({}),

    -- cssTSPunctDelimiter({ fg = mc.Punctuation[1] }),

    cssClassName({ fg = sp.error }),
    cssClassNameDot({ fg = cssClassName.fg.mix(mc.Background, 60), gui = "nocombine" }),

    cssIdentifier({ fg = sp.contrasting[1] }),

    cssTagName({ fg = "#00ee00" }),
    cssNoise({ base.Delimiter }),
    -- # Props.
    cssProp({ fg = mc.Symbols[4] }),

    cssPositioningProp({ fg = mc.CssProps.PositionAndLayout }), -- Such as display, left and z-index.
    cssFlexibleBoxProp({ fg = mc.CssProps.PositionAndLayout }), -- Flexbox props such as flex, justify-content.

    cssBorderProp({ cssProp }),
    cssMediaProp({ cssProp }), -- Size props such as height and width.
    cssBoxProp({ cssProp }), -- Box props such as margin, padding and overflow.
    cssTransitionProp({ cssProp }),
    cssTransformProp({ cssProp }),
    cssAnimationProp({ fg = mc.Symbols[1] }),

    cssColorProp({ cssProp }), -- Color props such as opacity.
    cssBackgroundProp({ cssColorProp }),

    cssFontProp({ fg = mc.CssProps.Typography }), -- Such as font-size and font-family.
    cssTextProp({ fg = mc.CssProps.Typography }), -- Typography props such text-align, color.

    -- cssTSPunctDelimiterClass { fg = cssClassName.fg.mix(mc.Background, 60), gui = 'nocombine'  },
  }
end)

return M
