local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local colors = require('deadly-gruv.colors')
local mc = colors.mc;
local sp = colors.sp;
local cp = colors.cp;

local bf = mc.Ui.Bufferline;
-- TODO: Use non-diagnostic highlight only if the lsp is not available.
-- TODO: Make up warning colors.

-- @see{`:h vim.diagnostic`} to understand what are the diagnostics.
local M = lush(function()
  return {
    -- Remember that it is just symbols, so fg is what actually a separator.
    BufferLineFill { fg = bf.Inactive.bg, bg = bf.Background[1], gui = 'bold' }, -- Unused by tabs area.

    BufferLineSeparatorSelected { fg = bf.Background[1] },

    -- * Normal buffers.
    BufferLineBufferSelected { fg = bf.Selected.fg, gui = 'bold' },
    BufferLineBufferVisible { fg = bf.Visible.fg, bg = bf.Visible.bg, gui = 'bold' },
    -- - Strange naming, but think of it as BufferLineBuffer.
    BufferLineBackground { fg = bf.Inactive.fg, bg = bf.Inactive.bg },

    --BufferLineBackground { fg = bf.Test.fg, bg = bf.Test.bg },

    BufferLineSeparator { fg = bf.Background[1], bg = bf.Inactive.bg },

    BufferLineSeparatorVisible { fg = bf.Background[1], bg = bf.Visible.bg },

    -- # Tabs.
    BufferLineTabSelected { bg = mc.Background },
    BufferLineTab { bg = bf.Inactive.bg },
    --BufferLineTabClose { bg = mc.Background },


    BufferLineDiagnostic { bg = sp.error },
    BufferLineDiagnosticVisible { bg = sp.error },
    BufferLineDiagnosticSelected { bg = sp.error },

    -- # Info (?).
    BufferLineInfoSelected { bg = sp.error },
    BufferLineInfoVisible { bg = sp.error },
    BufferLineInfo { bg = sp.error },
    -- * Diagnostic Info (?).
    BufferLineInfoDiagnostic { bg = sp.error },
    BufferLineInfoDiagnosticVisible { bg = sp.error },
    BufferLineInfoDiagnosticSelected { bg = sp.error },

    -- # Warnings.
    BufferLineWarningSelected { BufferLineBufferSelected },
    BufferLineWarningVisible { BufferLineBufferVisible },
    BufferLineWarning { BufferLineBackground },
    -- * Diagnostic Warnings.
    BufferLineWarningDiagnosticSelected { fg = sp.warning },
    BufferLineWarningDiagnosticVisible { fg = sp.warning, bg = bf.Visible.bg },
    BufferLineWarningDiagnostic {  fg = sp.warning, bg = bf.Inactive.bg },

    -- # Errors.
    BufferLineErrorSelected { BufferLineBufferSelected },
    BufferLineErrorVisible { BufferLineBufferVisible },
    BufferLineError { BufferLineBackground },
    -- * Diagnostic Errors.
    BufferLineErrorDiagnosticSelected { fg = sp.error },
    BufferLineErrorDiagnosticVisible { fg = sp.error, bg = bf.Visible.bg },
    BufferLineErrorDiagnostic { fg = sp.error, bg = bf.Inactive.bg },

    -- * Small dot indicating that the buffer was modified and not saved.
    BufferLineModifiedSelected { BufferLineBufferSelected },
    BufferLineModifiedVisible { bg = bf.Visible.bg },
    BufferLineModified { bg = bf.Inactive.bg },

    --BufferLineDuplicateSelected { fg = sp.error, bg = sp.error },
    --BufferLineDuplicateVisible {  },
    --BufferLineDuplicate {  },

    BufferLineIndicatorSelected { fg = sp.warning, bg = sp.warning },

    -- Indicator after invoking `:BufferLinePick<cr>`.
    BufferLinePickVisible { fg = sp.contrasting[1], bg = BufferLineBufferVisible.bg },
    BufferLinePickSelected { fg = sp.subtle[3] },
    BufferLinePick { fg = sp.contrasting[1], bg = BufferLineBackground.bg },

    -- # Hints.
    BufferLineHintSelected { fg = BufferLineBufferSelected.fg, bg = BufferLineBufferSelected.bg },
    BufferLineHintVisible { bg = BufferLineBufferVisible.bg },
    BufferLineHint { bg = BufferLineBackground.bg },
    -- * Diagnostic Hints.
    BufferLineHintDiagnosticSelected { bg = BufferLineBufferSelected.bg },
    BufferLineHintDiagnosticVisible { bg = BufferLineBufferVisible.bg },
    BufferLineHintDiagnostic { bg = BufferLineBackground.bg },

    -- * Close Button.
    --BufferLineCloseButtonSelected {  },
    --BufferLineCloseButtonVisible {  },
    --BufferLineCloseButton {  },
  }
end)

return M;
