local lush = require("lush")

local utils = require('deadly-gruv.utils')
local to_list, load_modules = utils.to_list, utils.load_modules

local meta_groups = to_list(require("deadly-gruv.meta_groups"))

local modules = {
  "base",
  "languages",
  "plugins",
}

local syntax_groups = to_list(load_modules("deadly-gruv", modules))

local theme = lush.merge(vim.list_extend(meta_groups, syntax_groups))

return theme
