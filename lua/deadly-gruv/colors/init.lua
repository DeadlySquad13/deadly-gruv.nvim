local color_palette = require('deadly-gruv.colors.color_palette');
local semantic_palette = require('deadly-gruv.colors.semantic_palette');
local color_harmonies = require('deadly-gruv.colors.color_harmonies');
local base_and_treesitter_meta_groups = require('deadly-gruv.colors.base_and_treesitter_meta_groups');

local colors = {
  cp = color_palette,
  sp = semantic_palette,
  ch = color_harmonies,
  mc = base_and_treesitter_meta_groups,
}

return colors;
