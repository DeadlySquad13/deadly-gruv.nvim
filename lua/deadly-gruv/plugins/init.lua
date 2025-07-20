local lush = require('lush')

local utils = require('deadly-gruv.utils')
local to_list, load_modules = utils.to_list, utils.load_modules

local plugins = {
  'treesitter',
  'lsp',
  'bufferline',
  'telescope',
  'dashboard',
  'nvim_ts_rainbow',
  'nvim_treesitter_context',
  'quick_scope',
  'illuminate',
  'leap',
  'mini_files',
  'sj',
  'lspsaga',
  'syntax_tree_surfer',
  'neo_tree',
  'lsp_signature',
  -- Git.
  'diffview',
  'neogit',
  'indent_blankline',

  'marks',
  'nvim_cmp',
}

local plugins_theme = lush.merge(to_list(load_modules('deadly-gruv.plugins', plugins)));

return plugins_theme;
