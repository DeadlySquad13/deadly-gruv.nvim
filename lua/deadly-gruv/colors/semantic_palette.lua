local cp = require('deadly-gruv.colors.color_palette');
local delta = require('deadly-gruv.constants').delta;

-- Semantic colors.
local semantic_palette = {
  -- It's easier to match contrasting colors in pairs. Main color is the color
  --   that contrasts the most with the environment.
  highly_contrasting = {
    {
      complementary = cp.purple.xyidio,
      main = cp.green.verdun,
    },
    {
      complementary = cp.purple.xyidio,
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
  },

  contrasting = {
    cp.blue.prussian,
    cp.mustard.bronze,
    -- Selection (even though it should be the most contrasting, it is used on
    -- background, so it should be quite blend).
    cp.gray.light,
    cp.purple.studio,
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
  },

  secondary = {
    cp.red.crimsontest,
    cp.orange.roman_coffee,
    cp.orange.metallic,
    cp.purple.trendy_pink,
    cp.red.crimsontest.mix(cp.purple.trendy_pink, 50),
  },

  --success = cp.,
  --info = cp.,
  --hint = cp.,
  warning = cp.yellow.philippine_gold,
  error = cp.red.crimson,

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
    cp.hj
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

