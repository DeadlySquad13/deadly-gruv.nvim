local lush = require('lush')

local utils = require('deadly-gruv.utils')
local to_list, load_modules = utils.to_list, utils.load_modules

local languages = {
  'cql',
  'css',
  'html',
  'json',
  'lua',
  'make',
  'man',
  'markdown',
  'nix',
  'python',
  'toml',
  'typescript',
  'typescriptreact',
}

local languages_theme = lush.merge(to_list(load_modules('deadly-gruv.languages', languages)));

return languages_theme;
