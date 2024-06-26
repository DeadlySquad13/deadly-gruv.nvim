local hsl = require("lush.hsl")

local delta = require("deadly-gruv.constants").delta

local sp = require("deadly-gruv.colors.semantic_palette")
local ch = require("deadly-gruv.colors.color_harmonies")

local DEFAULT_ANGLE = 90

local function rotateInAngle(multiple, angle)
  angle = angle or DEFAULT_ANGLE
  return (55 * multiple) % angle
end

local base_bracket_color = sp.contrasting[1].darken(2*delta).desaturate(7*delta).rotate(-DEFAULT_ANGLE / 2)
-- local base_markdown_header_color = sp.contrasting[1].darken(2*delta).desaturate(7*delta)
local base_markdown_header_color = sp.highly_contrasting[3].main.rotate(-DEFAULT_ANGLE/4)

-- This table helps to organize many-to-many connections of semantic_palette
--   and highlight groups.
local base_and_treesitter_meta_groups = {
  -- Comments, docs, ...
  Summary = {
    special = sp.contrasting[2],
    comment = sp.contrasting[1],
    docs = sp.info.mix(sp.contrasting[1], 40),
  },

  -- Class Symbols: classes, methods, constructors, class definitions, fields.
  ClassSymbols = {
    sp.highly_contrasting[6].main,
    sp.contrasting[4],
    sp.informational[9],
  },

  -- Symbols: functions, variables, constants... Also for UI text.
  Symbols = {
    sp.informational[1],
    hsl("#82762F").darken(2 * delta).saturate(5 * delta),
    --sp.informational[12].darken(5*delta).desaturate(2*delta),
    sp.informational[6],
    sp.informational[10],
    sp.informational[1],
    sp.informational[11],
    sp.secondary[4],
    sp.secondary[5],

    Builtin = {
      sp.secondary[5].desaturate(3 * delta).lighten(3 * delta),
      -- sp.secondary[5].mix(sp.informational[10], 40).lighten(delta),
    },
  },

  ---@see [Css Rule Order](https://9elements.com/css-rule-order/).
  ---No clipping in vim by default.
  CssProps = {
    PositionAndLayout = sp.secondary[1],
    DisplayAndVisibility = sp.secondary[2],
    Animation = sp.secondary[3],
    BoxModel = sp.secondary[4],
    Background = sp.secondary[5],
    Typography = sp.informational[11],
  },

  -- Important flow control statements (return).
  ImportantFlowControlStatements = {
    sp.secondary[1],
    Exceptions = sp.secondary[5],
  },
  -- Control flow statements (for, if, ...).
  FlowControlStatements = sp.secondary[2],
  -- Annotations, data types, ...
  Annotations = {
    sp.secondary[3],
    Builtin = sp.secondary[3].desaturate(5 * delta).darken(3 * delta),
  },

  -- Constant values (Strings, Numbers...).
  ConstantValues = {
    sp.subtle[2],
    sp.subtle[4],
    sp.subtle[3],
    sp.subtle[4].darken(3 * delta),
  },

  Operators = {
    sp.subtle[7].lighten(3 * delta).desaturate(3 * delta),
  },
  -- Includes, imports, macroses...
  MetaStatements = {
    sp.subtle[7],
  },

  -- Keywords that are used to declare variables, classes...
  --   For example: def, function, class.
  DeclarationKeywords = {
    sp.subtle[8],
  },

  -- Primitive operators. Mostly mathematical (+, -, ...) that are not so
  --   important in quick grasping.
  PrimitiveOpearators = {
    sp.subtle[5],
  },

  -- Use monochromatics and their shades for UI to get rich look.
  Ui = {
    Bufferline = {
      Background = {
        ch.monochromatics[3],
      },
      Selected = {
        fg = sp.informational[1],
      },
      Visible = {
        fg = sp.informational[6],
        bg = ch.monochromatics[2].lighten(5 * delta).saturate(3 * delta),
      },
      Inactive = {
        fg = sp.informational[1],
        bg = ch.monochromatics[2].darken(delta),
      },
    },

    Borders = {
      sp.emphasizing[1],
    },
  },

  Background = sp.neutral,

  Punctuation = {
    Brackets = {
      base_bracket_color,
      base_bracket_color.rotate(rotateInAngle(1)),
      base_bracket_color.rotate(rotateInAngle(2)),
      base_bracket_color.rotate(rotateInAngle(3)),
      base_bracket_color.rotate(rotateInAngle(4)),
      base_bracket_color.rotate(rotateInAngle(5)),
      base_bracket_color.rotate(rotateInAngle(6)),
    },
    sp.inconspicious[1],
    sp.inconspicious[2],
  },

  MarkdownHeaders = {
    base_markdown_header_color,
    base_markdown_header_color.rotate(1*DEFAULT_ANGLE / 2),
    base_markdown_header_color.rotate(2*DEFAULT_ANGLE / 2).darken(7*delta).saturate(delta),
    base_markdown_header_color.rotate(3*DEFAULT_ANGLE / 2).darken(3*delta).desaturate(3*delta),
    base_markdown_header_color.rotate(4*DEFAULT_ANGLE / 2),
    base_markdown_header_color.rotate(5*DEFAULT_ANGLE / 2),
    base_markdown_header_color.rotate(6*DEFAULT_ANGLE / 2),
  }
}

return base_and_treesitter_meta_groups
