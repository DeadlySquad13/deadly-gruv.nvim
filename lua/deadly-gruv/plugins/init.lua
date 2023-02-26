local lush = require('lush')

local utils = require('deadly-gruv.utils')
local to_list, load_modules = utils.to_list, utils.load_modules

local plugins = {
  'treesitter',
  'bufferline',
  'telescope',
  'dashboard',
  'nvim_ts_rainbow',
  'quick_scope',
  'illuminate',
  'leap',
  'sj',
  'lspsaga',
  'syntax_tree_surfer',
  'neo_tree',
  -- Git.
  'diffview',
  -- 'neogit',
}

local plugins_theme = lush.merge(to_list(load_modules('deadly-gruv.plugins', plugins)));

return plugins_theme;
