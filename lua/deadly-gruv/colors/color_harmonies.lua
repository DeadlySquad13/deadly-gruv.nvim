local hsl = require('lush.hsl')

local cp = require('deadly-gruv.colors.color_palette');

-- Color harmonies relative to neutral color (background).
--   To calculate @see{adobe color harmonies colorizer: @link{https://color.adobe.com/create/color-wheel}}
--   To understand @see{info about color harmonies: @link{https://www.colorsexplained.com/color-harmony/}}
local color_harmonies = {
  monochromatics = {
    cp.neutral,
    hsl('#c7ba9b'),
    hsl('#5c5648'),
    hsl('#eeca77'),
    hsl('#6b5b36'),
  }
}

return color_harmonies;

