local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local sp = require('deadly-gruv.colors').sp;

local M = lush(function()
  return {
    -- cssTSSelectorClass { fg = sp.error }, -- Class selectors.
    -- cssTSSelectorId { fg =sp.error }, -- Id selectors.
    cssTSPunctDelimiterPseudoElement { fg = sp.contrasting[1]},
    cssTSType {}, -- Other selectors?.
    cssTSTypeBuiltin { fg = sp.contrasting[1] }, -- Selectors like h3, html and &.

    cssTSKeyword { fg = sp.contrasting[1] }, -- @media, @keyframes, from, to and so on.
    cssTSFunction {},

    cssTSPunctDelimiter { fg = mc.Punctuation[1] },

    cssClassName { fg = sp.error },
    cssClassNameDot { fg = cssClassName.fg.mix(mc.Background, 60), gui = 'nocombine'  },

    cssIdentifier { fg = sp.contrasting[1] },

    cssTagName { fg = '#00ee00' },
    -- cssTSProperty {},

    -- cssTSPunctDelimiterClass { fg = cssClassName.fg.mix(mc.Background, 60), gui = 'nocombine'  },

    cssBackgroundProp { fg = sp.error },
  }
end)

return M;
