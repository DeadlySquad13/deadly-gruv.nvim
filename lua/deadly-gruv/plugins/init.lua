local lush = require('lush')

local treesitter = require('deadly-gruv.plugins.treesitter');
local bufferline = require('deadly-gruv.plugins.bufferline');
local telescope = require('deadly-gruv.plugins.telescope');

local plugins_theme = lush.merge({
  treesitter,
  bufferline,
  telescope 
});

return plugins_theme;
