local cp = require('deadly-gruv.colors.color_palette');
local delta = require('deadly-gruv.constants').delta;
local hsl = require('lush.hsl');

-- Semantic colors.
local semantic_palette = {
  -- It's easier to match contrasting colors in pairs. Main color is the color
  --   that contrasts the most with the environment.
  highly_contrasting = {
    {
      complementary = cp.white[1],
      main = cp.green.verdun,
    },
    {
      complementary = cp.white[1],
      main = cp.blue.teal,
    },
    {
      complementary = cp.white[1],
      main = cp.red.engine,
    },
    {
      complementary = cp.white[1],
      main = cp.orange.pumpkin,
    },
    {
      complementary = cp.white[1],
      main = cp.purple.studio,
    },
    {
      complementary = cp.white[3], -- background.
      main = cp.red.crimson,
    },
    {
      complementary = cp.black.black7,
      main = cp.white[1],
    },
  },

  contrasting = {
    cp.blue.prussian,
    cp.mustard.bronze,
    -- Selection (even though it should be the most contrasting, it is used on
    -- background, so it should be quite blend).
    cp.gray.light,
    cp.purple.studio,
    {
      complementary = cp.white[3],
      main = cp.blue.bismark,
    },
    brown = cp.orange.brown,
    green = cp.green.british_racing,
  },

  -- Symbols.
  informational = {
    cp.black.black7,
    cp.black.black6,
    cp.black.black5,
    cp.black.black4,
    cp.black.black3,
    cp.black.black2,
    cp.black.black1,
    cp.black.black0,
    cp.green.verdun,
    cp.blue.sapphire,
    cp.purple.twilight_lavender,
    cp.mustard.acid,
    blue = hsl(198, 43, 33),
  },

  secondary = {
    cp.red.crimsontest,
    cp.orange.roman_coffee,
    cp.orange.metallic,
    cp.purple.trendy_pink,
    cp.red.crimsontest.mix(cp.purple.trendy_pink, 50),
  },

  -- Highly contrasting.
  success = cp.green.verdun,
  error = cp.red.lipstick,
  -- Contrasting.
  warning = cp.orange.pumpkin.desaturate(3*delta).darken(3*delta),
  -- Informational
  info = cp.blue.sapphire,
  -- Emphazing or even vague.
  hint = cp.gray[5],

  subtle = {
    cp.white[2],
    -- Language constants (Number, String, ...)
    cp.aquamarine.siam,
    cp.purple.puce,
    cp.purple.trendy_pink,
    -- Primitive operators.
    cp.orange.raw_umber,

    cp.blue.morning,

    -- Meta Statements.
    cp.purple.twilight_lavender,

    -- Declaration Keywords.
    cp.orange.roman_coffee.lighten(4*delta).desaturate(3*delta)
  },

  neutral = cp.white[3],

  emphasizing = {
    cp.gray[5],
    cp.white.tan,
    pink = hsl(14, 95, 83),
    green = hsl(118, 42, 85),
    light_green = hsl(68, 38, 84),
    blue = hsl(198, 60, 80),
  },

  vague = cp.gray[5],
  --matte = cp.,
  inconspicious = {
    cp.gray[4],
    cp.gray[3],
    cp.gray[2],
    cp.white.tan,
  }
}

return semantic_palette;

