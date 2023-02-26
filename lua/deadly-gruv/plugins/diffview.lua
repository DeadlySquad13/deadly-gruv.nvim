local lush = require('lush')

local delta = require('deadly-gruv.constants').delta
local mc = require('deadly-gruv.colors').mc
local sp = require('deadly-gruv.colors').sp
local mg = require('deadly-gruv.meta_groups')
local base = require('deadly-gruv.base')

local M = lush(function()
  return {
    -- Counters of changes on the right of the file.
    DiffviewFilePanelInsertions { fg = sp.success },
    DiffviewFilePanelDeletions { fg = sp.error },

    DiffviewFilePanelTitle { base.Title },
    DiffviewFilePanelCounter { fg = base.Directory.fg.darken(3*delta) },
    DiffviewFilePanelSelected { fg = base.Title.fg.lighten(delta), gui = 'bold' }, -- Selected file.

    -- M, ? on the left side of file.
    DiffviewStatusModify { fg = sp.warning },
    DiffviewStatusAdded { fg = sp.success },
  }
end)

return M
