local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;

local base = require('deadly-gruv.base');
local mg = require('deadly-gruv.meta_groups')

-- TODO: Move all used base.Something into mega_groups.
-- Add modified variants of base groups as meta_groups too.
local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- * Keywords.
    sym '@keyword.context' { mg.base.dg_Module },     -- Define context for the next commands. For instance "WORKDIR".
    sym '@keyword.special' { base.Title },     -- Have special meaning, for example, "FROM" isn't just a command in container but creates another stage.
    sym '@keyword.var' { mg.base.dg_Declaration },    -- Somehow related to variables: "ARG", "ENV"...
    sym '@keyword.expose' { base.Number }, -- "EXPOSE" keyword.
    sym '@keyword.flow' { base.Keyword },      -- Control flow of the container (something like return statement): "ENTRYPOINT", "RUN"
  }
end)

return M;
