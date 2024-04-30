local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local mc = require('deadly-gruv.colors').mc;

local mg = require('deadly-gruv.meta_groups')

local M = lush(function()
  local sym = injected_functions.sym

  return {
    -- Section headings such as "SYNOPSIS", "DESCRIPTION".
    manSectionHeading { fg = mc.Symbols[2] }, -- In most cases is combined with `manBold`.
    manOptionDesc { mg.base.dg_Part },
    manReference { mg.base.dg_ReferenceTitle },
    -- Emphasized things.
    manBold { gui = "bold" },
    --   Emphasized things. Mostly less important than manBold (used in huge
    -- chunks of text to show something better).
    manUnderline { fg = mc.Symbols[6], gui = "underline" },
  }
end)

return M;
