local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;
local mc = require('deadly-gruv.colors').mc;
local sp = require('deadly-gruv.colors').sp;

local M = lush(function()
  return {
    htmlTag { fg = '#aaee00' },
    htmlTagName { fg = sp.error },
    htmlEndTag { fg = sp.error },
    -- htmlTagName {base.ApprenticeBlue},
    -- htmlArg {base.ApprenticeOrange},
    -- htmlScriptTag {base.ApprenticePurple},
    -- htmlTagN {base.ApprenticeFg1},
    -- htmlSpecialTagName {base.ApprenticeBlue},
    -- htmlSpecialChar {base.ApprenticeRed},
    -- htmlLink {fg = base.ApprenticeFg4.fg.hex, gui = styles.underline},
    -- htmlBold {fg = base.ApprenticeFg1.fg.hex, gui = styles.bold},
    -- htmlBoldUnderline {
    --   fg = base.ApprenticeFg1.fg.hex,
    --   gui = table_concat({styles.bold, styles.underline}, ","),
    -- },
    -- htmlBoldItalic {
    --   fg = base.ApprenticeFg1.fg.hex,
    --   gui = table_concat({styles.bold, styles.italic_strings}, ","),
    -- },
    -- htmlBoldUnderlineItalic {
    --   fg = base.ApprenticeFg1.fg.hex,
    --   gui = table_concat({styles.bold, styles.italic_strings}, ","),
    -- },
    -- htmlItalic {fg = base.ApprenticeFg1.fg.hex, gui = styles.italic_strings},
  }
end)

return M;
