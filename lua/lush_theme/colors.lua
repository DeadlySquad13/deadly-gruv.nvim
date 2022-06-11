local hsl = require('lush.hsl')

local M = {}

-- Colors.
-- Were named according to:
--   <https://chir.ag/projects/name-that-color> 'Name That Color'.
--   <https://www.color-blindness.com/color-name-hue/> 'Color Name & Hue'
--     (better for hsl).
M.color_palette = {
  red = {
    crimson = hsl(358, 100, 31),
    crimsontest = hsl(358, 70, 31),
    engine = hsl(2, 75, 46),
    venetian = hsl(6, 96, 59),
  },

  green = {
    verdun = hsl(80, 100, 24),
  },

  mustard = {
    bronze = hsl(57, 79, 26),
    citron = hsl(60, 71, 35),
    acid = hsl(61, 66, 44),
  },

  yellow = {
    philippine_gold = hsl(37, 80, 39),
    gold = hsl(27, 56, 48),
    saffron = hsl(42, 95, 58),
  },

  blue = {
    teal = hsl(180, 100, 40),

    prussian = hsl(225, 100, 38),
    deep_cerulean = hsl(199, 100, 38),
    bondi = hsl(188, 96, 36),
    sapphire = hsl(190, 89, 25),
    jelly_bean = hsl(183, 33, 40),
    morning = hsl(157, 16, 58),
  },

  purple = {
    twilight_lavender = hsl(323, 39, 40),
    turkish_rose = hsl(333, 34, 54),
    puce = hsl(344, 47, 68),
    trendy_pink = hsl(320, 27, 60),
    studio = hsl(270, 52, 60),
  },

  aquamarine = {
    amazon = hsl(143, 30, 37),
    russian = hsl(122, 21, 51),
    siam = hsl(98, 18, 53),
    pistachio = hsl(104, 35, 62),
  },

  orange = {
    rust = hsl(19, 97, 35),
    roman_coffee = hsl(19, 34, 48),
    metallic = hsl(24, 88, 45),
    pumpkin = hsl(27, 99, 55),
    raw_umber = hsl(40, 88, 33),
  },

  white = {
    white0 = hsl(53, 74, 91),
    white1 = hsl(48, 87, 88),
    white2 = hsl(44, 62, 83),
    tan = hsl(43, 47, 77),
  },

  gray = {
    hsl(43, 59, 81),
    hsl(40, 38, 73),
    hsl(39, 24, 66),
    hsl(35, 17, 59),
    hsl(30, 12, 51),
    light = hsl(0, 0, 83),
  },

  black = {
    black0 = hsl(28, 11, 44),
    black1 = hsl(27, 10, 36),
    black2 = hsl(22, 7, 29),
    black3 = hsl(20, 5, 22),
    black5 = hsl(20, 3, 19),
    black6 = hsl(0, 0, 16),
    black7 = hsl(1, 6, 12),
  },
}

local color_palette = M.color_palette;

-- Semantic colors.
M.semantic_palette = {
  highly_contrasting = {
    color_palette.blue.teal,
  },

  contrasting = {
    color_palette.blue.prussian,
    color_palette.mustard.bronze,
    -- Selection (even though it should be the most contrasting, it is used on
    -- background, so it should be quite blend).
    color_palette.gray.light,
    color_palette.purple.studio,
  },

  -- Symbols.
  informational = {
    color_palette.black.black7,
    color_palette.black.black6,
    color_palette.black.black5,
    color_palette.black.black4,
    color_palette.black.black3,
    color_palette.black.black2,
    color_palette.black.black1,
    color_palette.black.black0,
    color_palette.green.verdun,
    color_palette.blue.sapphire,
    color_palette.purple.twilight_lavender,
  },

  secondary = {
    color_palette.red.crimsontest,
    color_palette.orange.roman_coffee,
    color_palette.orange.metallic,
    color_palette.purple.trendy_pink,
  },

  --alert = color_palette.,
  error = color_palette.red.crimson,
  --success = color_palette.,

  subtle = {
    color_palette.white.white1,
    -- Language constants (Number, String, ...)
    color_palette.aquamarine.siam,
    color_palette.purple.puce,
    color_palette.purple.trendy_pink,
    -- Primitive operators.
    color_palette.orange.raw_umber,

    color_palette.blue.morning,

    -- Meta Statements.
    color_palette.purple.twilight_lavender,
  },

  neutral = color_palette.white.white2,

  emphasizing = {
    color_palette.white.white1,
    color_palette.white.tan,
  },

  vague = color_palette.gray[5],
  --matte = color_palette.,
  inconspicious = {
    color_palette.gray[4],
    color_palette.gray[3],
    color_palette.gray[2],
    color_palette.white.tan,
  }
}

local c = M.semantic_palette;

-- This table helps to organize many-to-many connections of semantic_palette
--   and highlight groups.
M.ordered_meta_groups = {
  Selection = {
    c.highly_contrasting[1],
  },
  -- Comments, docs, ...
  Summary = {
    c.contrasting[2],
    c.contrasting[1],
  },

  ClassSymbols = {
    c.contrasting[4],
  },

  Symbols = {
    c.informational[1],
    c.informational[9],
    c.informational[6],
    c.informational[10],
    c.informational[11],
    c.secondary[4],
    c.secondary[5],
  },

  -- Important flow control statements (return).
  ImportantFlowControlStatements = c.secondary[1],
  -- Control flow statements (for, if, ...).
  FlowControlStatements = c.secondary[2],
  -- Annotations, data types, ...
  Annotations = c.secondary[3],

  -- Constant values (Strings, Numbers...).
  ConstantValues = {
    c.subtle[2],
    c.subtle[4],
    c.subtle[3],
  },

  MetaStatements = {
    c.subtle[7],
  },

  -- Primitive operators. Mostly mathematical (+, -, ...) that are not so
  --   important in quick grasping.
  PrimitiveOpearators = {
    c.subtle[5],
  },

  Punctuation = {
    c.inconspicious[1],
    c.inconspicious[2],
  }
}

return M;
