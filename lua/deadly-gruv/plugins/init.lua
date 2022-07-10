local lush = require('lush')

local treesitter = require('deadly-gruv.plugins.treesitter');
local bufferline = require('deadly-gruv.plugins.bufferline');
local telescope = require('deadly-gruv.plugins.telescope');
local dashboard = require('deadly-gruv.plugins.dashboard');
local nvim_ts_rainbow = require('deadly-gruv.plugins.nvim-ts-rainbow');

local plugins_theme = lush.merge({
  treesitter,
  bufferline,
  telescope,
  dashboard,
  nvim_ts_rainbow
});

return plugins_theme;
