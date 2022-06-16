local lush = require('lush')

local treesitter = require('deadly-gruv.plugins.treesitter');
local bufferline = require('deadly-gruv.plugins.bufferline');

local plugins_theme = lush.merge({
  treesitter,
  bufferline,
});

return plugins_theme;
