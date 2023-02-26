local lush = require('lush')

local delta = require('deadly-gruv.constants').delta
local mc = require('deadly-gruv.colors').mc
local sp = require('deadly-gruv.colors').sp
local mg = require('deadly-gruv.meta_groups')
local base = require('deadly-gruv.base')

local M = lush(function()
  return {
    NeogitUntrackedfiles { base.Title },
    NeogitUnstagedchanges { base.Title },
    NeogitRecentcommits { fg = sp.informational.blue },

    NeogitBranch { fg = sp.informational.blue, gui = 'italic' },
    NeogitRemote { fg = mc.ImportantFlowControlStatements[1], gui ='italic' },
  }
end)

return M
