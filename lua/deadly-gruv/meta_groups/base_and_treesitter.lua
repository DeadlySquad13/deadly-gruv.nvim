local hsl = require('lush.hsl')
local lush = require('lush')

local delta = require('deadly-gruv.constants').delta

local cp = require('deadly-gruv.colors.color_palette')
local sp = require('deadly-gruv.colors.semantic_palette')
local ch = require('deadly-gruv.colors.color_harmonies')
local mc = require('deadly-gruv.colors').mc;

-- It was a mistake to make meta groups just a collections of colors, it's way
-- easier to make them as an instances of lush syntax groups.
-- WARN: Should *add* to 'base' and 'treesitter' groups more generic groups, not replace them
-- or abstract them completely away - existing groups are already nicely thought
-- out. We just need in some cases to extend them so that naming makes sense.
local meta_groups = lush(function()
  return {
    ---@exaple Changes in MiniFiles border when you edit some file in view.
    dg_Changed({ fg = sp.contrasting.green }), -- TODO: Add color to palette.

    --- Matched instances.
    ---@exaple Search results.
    dg_Selection({ fg = sp.highly_contrasting[1].complementary, bg = sp.highly_contrasting[1].main }),
    --- Currently chosen instance from matched instances.
    ---@exaple If incsearch enabled, currently matched string.
    dg_Selected({ fg = sp.highly_contrasting[2].complementary, bg = sp.highly_contrasting[2].main }),
    ---@exaple Matching parentheses.
    dg_Match({ fg = sp.highly_contrasting[2].main, gui = 'underline bold' }),

    -- When |language-mapping| is used (see 'guicursor').
    ---@exaple lCursor during search, f/t...
    dg_Pending({ fg = dg_Selected.bg, bg = dg_Selected.fg, gui = dg_Selected.gui }),

    ---@example LeapMatch (instant match after pressing one key). It should be
    -- more contrasting than dg_Match as it can be anywhere in the window, far
    -- from cursor.
    dg_GlobalMatch({ fg = sp.highly_contrasting[3].main, gui = 'underline bold' }),

    ---@example LabelPrimary of a leap. It labels characters that user has to press to jump.
    dg_LabelPrimary({ fg = sp.highly_contrasting[4].complementary, bg = sp.highly_contrasting[4].main, gui = 'bold' }),
    ---@example LabelSecondary of a leap. It labels characters in second group that user has to press to jump.
    dg_LabelSecondary({ fg = sp.highly_contrasting[5].complementary, bg = sp.highly_contrasting[5].main, gui = 'bold' }),
    -- Not used yet.
    dg_LabelTertiary({ fg = sp.highly_contrasting[3].complementary, bg = sp.highly_contrasting[3].main, gui = 'bold' }),
    dg_Part({ fg = mc.Symbols[4] }),
    dg_ReferenceUrl({ fg = mc.ConstantValues[1] }),
    dg_ReferenceTitle({ fg = mc.Annotations[1] }),


    -- REFACTOR: gui was connected to Title.gui, not sure to which group it
    -- should be connected here.
    dg_Header1({ fg = mc.MarkdownHeaders[1], gui = "bold" }),
    dg_Header2({ fg = mc.MarkdownHeaders[2], gui = Header1.gui }),
    dg_Header3({ fg = mc.MarkdownHeaders[3], gui = Header1.gui }),
    dg_Header4({ fg = mc.MarkdownHeaders[4], gui = Header1.gui }),
    dg_Header5({ fg = mc.MarkdownHeaders[5], gui = Header1.gui }),
    dg_Header6({ fg = mc.MarkdownHeaders[6], gui = Header1.gui }),

    -- # Programming
    -- I'm not sure how to reuse treesitter groups between files so I move them
    -- here when needed. It's not required to move all TS groups here.
    --
    -- Used in nvim_cmp for lspkind corresponding highlights of the labels.
    dg_ClassContructor({ fg = mc.ClassSymbols[1] }),               -- Constructor calls and definitions: `{}` in Lua, Java constructors, python (pd.Dataframe({column: col}))
    dg_Field({ dg_Part }),                                         -- Object and struct fields (mostly LSP?).
    dg_Method({ fg = mc.ClassSymbols[3], gui = 'bold' }),          -- Object and struct fields (mostly LSP?).
    dg_FunctionBuiltin({ fg = mc.Symbols[6], gui = 'nocombine' }), -- Built-in functions: `print` in Lua.
    dg_VariableBuiltin({ fg = mc.Symbols[7], gui = 'nocombine' }), -- Built-in functions: `print` in Lua ???.

    dg_File({ fg = mc.MetaStatements[1] }),
    dg_Folder({ fg = dg_File.fg, gui = 'bold' }),
    dg_Module({ fg = dg_File.fg, gui = 'italic' }),       -- File or module inclusion keywords: `#include` in sp, `use` or `extern crate` in Rust.

    dg_Operator({ fg = mc.Operators[1] }),                -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in sp.
    dg_Variable({ fg = mc.Symbols[5], gui = 'nocombine' }), -- Variable names that don't fit into other categories.
    dg_Type({ fg = mc.Annotations[1] }),                  -- Type (and class) definitions and annotations.

    dg_Declaration({ fg = mc.DeclarationKeywords[1] }), -- Keywords like `local` in lua, `const` and `let` in ts. Also use for CONSTANTS in lspkind.
  }
end)

return meta_groups
