local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;

local mg = require('deadly-gruv.meta_groups')

local base = require('deadly-gruv.base');
local json = require('deadly-gruv.languages.json');

local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Highlight paths like "./NeoVim_config" in `.config/nvim".source = ./NeoVim_config;`
    sym'@lsp.type.path' { mg.base.dg_Module },
  }
end)

return M;
