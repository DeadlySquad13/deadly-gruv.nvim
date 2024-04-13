local lush = require('lush')

local languages = {
  'json',
  'python',
  'css',
  'lua',
  'html',
  'typescript',
  'typescriptreact',
  'markdown',
  'cql',
}

local utils = require('deadly-gruv.utils')
local to_list, load_modules = utils.to_list, utils.load_modules

local languages_theme = lush.merge(to_list(load_modules('deadly-gruv.languages', languages)));

return languages_theme;
