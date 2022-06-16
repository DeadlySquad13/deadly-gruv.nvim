local lush = require('lush')

local base = require('deadly-gruv.base')
local languages = require('deadly-gruv.languages');
local plugins = require('deadly-gruv.plugins');

local theme = lush.merge({
  base,
  languages,
  plugins,
});

return theme;
