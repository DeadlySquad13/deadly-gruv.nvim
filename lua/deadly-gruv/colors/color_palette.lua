local hsl = require('lush.hsl');

-- Colors.
-- Were named according to:
--   <https://chir.ag/projects/name-that-color> 'Name That Color'.
--   <https://www.color-blindness.com/color-name-hue/> 'Color Name & Hue'
--     (better for hsl).
local color_palette = {
  red = {
    crimson = hsl(358, 100, 31),
    crimsontest = hsl(358, 70, 31),
    engine = hsl(2, 75, 46),
    venetian = hsl(6, 96, 59),
    lipstick = hsl(0, 100, 33),
  },

  green = {
    verdun = hsl(66, 88, 28),
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
    bismark = hsl(190, 89, 25),
    jelly_bean = hsl(183, 33, 40),
    morning = hsl(157, 16, 58),
  },

  purple = {
    twilight_lavender = hsl(323, 39, 40),
    turkish_rose = hsl(333, 34, 54),
    puce = hsl(344, 47, 68),
    trendy_pink = hsl(320, 27, 60),
    studio = hsl(270, 52, 60),
    xyidio = hsl(331, 72, 100),
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
    brown = hsl(24, 100, 33),
    metallic = hsl(40, 88, 39),
    pumpkin = hsl(27, 99, 55),
    raw_umber = hsl(40, 88, 33),
  },

  white = {
    hsl(53, 74, 91),
    hsl(48, 87, 88),
    hsl(44, 62, 83),
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

return color_palette;

