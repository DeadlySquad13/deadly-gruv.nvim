local lush = require('lush')

local delta = require('deadly-gruv.constants').delta;

local sp = require('deadly-gruv.colors').sp;
local mc = require('deadly-gruv.colors').mc;
local mg = require('deadly-gruv.meta_groups');

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local M = lush(function()
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
     Normal       { fg = sp.informational[1], bg = sp.neutral }, -- Normal text
     NonText      { fg = sp.inconspicious[2] }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
     ColorColumn  { bg = sp.neutral.darken(1*delta) }, -- Columns set with 'colorcolumn'
     Conceal      { fg = sp.inconspicious[2] }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
     lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
     --CursorIM     { fg = c.error, bg = c.error}, -- Like Cursor, but used when in IME mode |CursorIM|
     --CursorColumn { bg = c.emphasizing}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
     CursorLine   { bg = sp.emphasizing[2] }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- Directory names (and other special names in listings)
    -- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
     EndOfBuffer  { NonText }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    -- ErrorMsg     { }, -- Error messages on the command line
     --VertSplit    { fg = c.error, bg = c.error }, -- Column separating vertically split windows
     Folded       { fg = Normal.fg.lighten(5*delta), bg = Normal.bg.desaturate(3*delta).darken(3*delta) }, -- Line used for closed folds
     FoldColumn   { fg = sp.vague, bg = sp.inconspicious1 }, -- 'foldcolumn'
     SignColumn   { fg = sp.vague, bg = Normal.bg }, -- Column where |signs| are displayed
     LineNr       { fg = sp.vague }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
     CursorLineNr { fg = sp.contrasting[1], bg = sp.emphasizing[2] }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
     Pmenu        { fg = Normal.fg, bg = Normal.bg.darken(2*delta) }, -- Popup menu: Normal item.
     PmenuSel     { fg = Pmenu.fg.darken(4*delta), bg = Pmenu.bg.darken(4*delta), gui = 'bold' }, -- Popup menu: Selected item.
     PmenuSbar    { bg = Pmenu.bg }, -- Popup menu: Scrollbar.
     PmenuThumb   { bg = Pmenu.fg.mix(Pmenu.bg, 90) }, -- Popup menu: Thumb of the scrollbar.
     --Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    -- * Search and selections.
     Search       { mg.base.dg_Selection }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
     IncSearch    { mg.base.dg_Selected }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
     Substitute   { Search }, -- |:substitute| replacement text highlighting
     Cursor       { IncSearch }, -- Character under the cursor (during f-find as far as I noticed).
     MatchParen   { mg.base.dg_Match }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

    -- * Spell.
     --SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
     SpellBad     { fg = sp.error }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
     --SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
     --SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
     --SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

    -- * Should be different for tpipeline to work (otherwise ^^^^ will be
    -- drawn instead of `fillchars`)
     StatusLine   { NonText }, -- Status line of current window
     StatusLineNC { fg = NonText.fg.lighten(delta), bg = NonText.bg }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

     --TabLine      {  fg = c.error, bg = c.error }, -- Tab pages line, not active tab page label
     --TabLineFill  { fg = c.error, bg = c.error }, -- Tab pages line, where there are no labels
     --TabLineSel   {  fg = c.error, bg = c.error }, -- Tab pages line, active tab page label
     Title        { fg = mc.ClassSymbols[1], gui = 'bold' }, -- Titles for output from ":set all", ":autocmd" etc.
     Visual       { bg = sp.contrasting[3] }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
     WarningMsg   { fg = sp.error }, -- Warning messages
     Whitespace   { fg = sp.inconspicious[1] }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
     Winseparator { fg = mc.Ui.Borders[1], }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
     WildMenu     { fg = sp.inconspicious[1] }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    --CommentSemanticIndent1 { fg = mc.Summary[1], bg = c.error },
    --CommentSemanticIndent2 { fg = mc.Summary[2], bg = c.contrasting },
    --CommentSemanticIndent3 { fg = mc.Summary[3], bg = c.subtle },
     SpecialComment { fg = mc.Summary[1], gui = 'bold' }, --   Special things inside a comment (e.g. '\n')
     Comment        { fg = mc.Summary[2] }, -- Any comment

    -- * Language constants.
     String         { fg = mc.ConstantValues[1] }, --   A string constant: "this is a string"
     Boolean        { fg = mc.ConstantValues[2] }, --   A boolean constant: TRUE, false
     Number         { fg = mc.ConstantValues[3] }, --   A number constant: 234, 0xff
     Float          { fg = Number.fg.darken(1) }, --   A floating point constant: 2.3e10

     Character      { fg = sp.inconspicious[1] }, --   A character constant: 'c', '\n'

    -- * Symbols.
     Function       { fg = mc.Symbols[2], gui = 'bold' }, --   Function name (also: methods for classes)
     Identifier     { fg = mc.Symbols[1] }, -- (*) Any variable name
     Constant       { fg = mc.Symbols[1] }, -- (*) Any constant

     Statement      { fg = sp.informational[1] }, -- (*) Any statement
     --pythonAttribute { fg = c.error }, -- (*) Any statement

    -- Exception      { }, --   try, catch, throw
     Keyword        { fg = mc.ImportantFlowControlStatements[1], gui ='italic' }, --   any other keyword (return).
    -- Label          { }, --   case, default, etc.
     Conditional    { fg = mc.FlowControlStatements, gui = 'italic' }, --   if, then, else, endif, switch, etc.
     Repeat         { fg = mc.FlowControlStatements, gui = 'italic' }, --   for, do, while, etc.
     Operator       { fg = mc.PrimitiveOpearators[1] }, --   "sizeof", "+", "*", etc.


    -- PreProc        { }, -- (*) Generic Preprocessor
     Include        { fg = mc.MetaStatements[1], gui = 'italic' }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

     Type           { fg = mc.ClassSymbols[1], gui = 'bold' }, -- (*) int, long, char, etc.
     StorageClass   { fg = sp.highly_contrasting[1].fg }, --   static, register, volatile, etc.
     Structure      { fg = sp.highly_contrasting[1].fg }, --   struct, union, enum, etc.
     Typedef        { fg = sp.highly_contrasting[1].fg }, --   A typedef

    Special        { fg = mc.Punctuation[2] }, -- (*) Any special symbol, for example, markdownDelimiter (###).
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return M;

-- vi:nowrap
