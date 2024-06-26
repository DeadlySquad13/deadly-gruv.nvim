local lush = require("lush")

local delta = require("deadly-gruv.constants").delta
local mc = require("deadly-gruv.colors").mc
local sp = require("deadly-gruv.colors").sp

local mg = require('deadly-gruv.meta_groups')

local base = require("deadly-gruv.base")

local M = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    markdownH1({ mg.base.dg_Header1 }),
    markdownH2({ mg.base.dg_Header2 }),
    markdownH3({ mg.base.dg_Header3 }),
    markdownH4({ mg.base.dg_Header4 }),
    markdownH5({ mg.base.dg_Header5 }),
    markdownH6({ mg.base.dg_Header6 }),

    markdownOrderedListMarker({ fg = mc.ImportantFlowControlStatements[1] }),

    markdownUrl({ mg.base.dg_ReferenceUrl }),
    markdownUrlTitle({ mg.base.dg_ReferenceTitle }),

    -- TODO: remove .markdown to make it markup style agnostic?
    -- Treesitter.
    sym'@markup.heading.1.markdown'({ markdownH1 }), -- Default value just need it for transformations below.
    sym'@markup.heading.2.markdown'({ markdownH2 }),
    sym'@markup.heading.3.markdown'({ markdownH3 }),
    sym'@markup.heading.4.markdown'({ markdownH4 }),
    sym'@markup.heading.5.markdown'({ markdownH5 }),
    sym'@markup.heading.6.markdown'({ markdownH6 }),

    sym'@markup.heading.1.marker.markdown'({ fg = markdownH1.fg.lighten(2*delta).desaturate(14*delta) }), -- Default value just need it for transformations below.
    sym'@markup.heading.2.marker.markdown'({ fg = markdownH2.fg.lighten(2*delta).desaturate(14*delta) }),
    sym'@markup.heading.3.marker.markdown'({ fg = markdownH3.fg.lighten(2*delta).desaturate(14*delta) }),
    sym'@markup.heading.4.marker.markdown'({ fg = markdownH4.fg.lighten(2*delta).desaturate(14*delta) }),
    sym'@markup.heading.5.marker.markdown'({ fg = markdownH5.fg.lighten(2*delta).desaturate(14*delta) }),
    sym'@markup.heading.6.marker.markdown'({ fg = markdownH6.fg.lighten(2*delta).desaturate(14*delta) }),

    sym'@markup.list.markdown'({ markdownOrderedListMarker }),

    sym'@markup.link.url.markdown'({ markdownUrl }),
    sym'@markup.link.label.markdown'({ markdownUrlTitle }),

    sym'@markup.strong.markdown_inline'({ gui = 'bold' }),
    sym'@markup.italic.markdown_inline'({ gui = 'italic' }),

    sym'@markup.raw.markdown_inline'({ base.ColorColumn }),
  }
end)

return M
