local lush = require('lush');
    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. sym'@keyword' => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
local colors = require('deadly-gruv.colors');
local sp = colors.sp;
local mc = colors.mc;
local delta = require('deadly-gruv.constants').delta

local mg = require('deadly-gruv.meta_groups')

local base = require('deadly-gruv.base');

local treesitter = lush(function(injected_functions)
  local sym = injected_functions.sym

  return {
    -- Clases.
    sym'@constructor'        { fg = mc.ClassSymbols[1] } , -- Constructor calls and definitions: `{}` in Lua, Java constructors, python (pd.Dataframe({column: col}))

    sym'@method'             { fg = mc.ClassSymbols[3], gui = 'bold' }, -- Method calls and definitions.
    sym'@parameter'          { fg = mc.Symbols[3], gui = 'nocombine' } , -- Parameters of a function.
    sym'@field'              { mg.base.dg_Part } , -- Object and struct fields (mostly LSP?).
    sym'@variable'           { fg = mc.Symbols[5], gui='nocombine' } , -- Variable names that don't fit into other categories.
    sym'@variable.member'           { sym'@field' } , -- Object and struct fields.
    sym'@function.builtin'        { fg = mc.Symbols[6], gui='nocombine' } , -- Built-in functions: `print` in Lua.
    sym'@variable.builtin'        { fg = mc.Symbols[7], gui='nocombine' } , -- Built-in functions: `print` in Lua ???.
    --
    -- sym'@attribute'          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. sp++/Dart attributes.
    -- sym'@boolean'            { } , -- Boolean literals: `True` and `False` in Python.
    -- sym'@character'          { } , -- Character literals: `'a'` in sp.
    -- sym'@characterSpecial'   { } , -- Special characters.
    -- sym'@comment'            { } , -- Line comments and block comments.
    -- sym'@conditional'        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- sym'@constant'           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    sym'@constant.builtin'       { fg = mc.ConstantValues[4], gui = 'nocombine' } , -- Built-in constant values: `nil` in Lua.
    -- sym'@constMacro'         { } , -- Constants defined by macros: `NULL` in sp.
    -- sym'@debug'              { } , -- Debugging statements.
    -- sym'@define'             { } , -- Preprocessor #define statements.
    -- sym'@error'              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    sym'@exception'          { fg = mc.ImportantFlowControlStatements.Exceptions } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- sym'@float'              { } , -- Floating-point number literals.
    sym'@function'           { base.Function } , -- Function calls and definitions.
    -- sym'@funcMacro'          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    sym'@keyword'            { fg = mc.FlowControlStatements, gui = 'italic' } , -- Keywords that don't fit into other categories.
    sym'@keyword.function'    { fg = mc.DeclarationKeywords[1], gui = 'italic' } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    sym'@keyword.operator'    { fg = mc.Operators[1] } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in sp.
    sym'@keyword.return'      { base.Keyword } , -- Keywords like `return` and `yield`.
    sym'@keyword.declaration' { fg = mc.DeclarationKeywords[1] } , -- Keywords like `local` in lua, `const` and `let` in ts.
    sym'@keyword.export'      { fg = mc.MetaStatements[1], gui = 'italic' } , -- File or module inclusion keywords: `#include` in sp, `use` or `extern crate` in Rust.
    sym'@keyword.import'      { fg = mc.MetaStatements[1], gui = 'italic' } , -- File or module inclusion keywords: `#include` in sp, `use` or `extern crate` in Rust.
    sym'@include'             { fg = mc.MetaStatements[1], gui = 'italic' } , -- File or module inclusion keywords: `#include` in sp, `use` or `extern crate` in Rust.
    -- sym'@label'              { } , -- GOTO labels: `label:` in sp, and `::label::` in Lua.
    -- sym'@namespace'          { } , -- Identifiers referring to modules and namespaces.
    -- sym'@none'               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- sym'@number'             { } , -- Numeric literals that don't fit into other categories.
    -- sym'@operator'           { } , -- Binary or unary operators: `+`, and also `->` and `*` in sp.
    -- sym'@parameterReference' { } , -- References to parameters of a function.
    -- sym'@preProc'            { } , -- Preprocessor #if, #else, #endif, etc.
    sym'@property'           { sym'@field' } , -- Same as `sym'@field'`.
    sym'@punctuation.delimiter'     { base.Delimiter } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- sym'@punctBracket'       { } , -- Brackets, braces, parentheses, etc.
    -- sym'@punctSpecial'       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- sym'@repeat'             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- sym'@storageClass'       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- sym'@string'             { } , -- String literals.
    -- sym'@stringRegex'        { } , -- Regular expression literals.
    -- sym'@stringEscape'       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- sym'@stringSpecial'      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- sym'@symbol'             { } , -- Identifiers referring to symbols or atoms.
    -- sym'@tag'                {} , -- Tags like HTML tag names.
    sym'@tag.attribute'       { fg = sp.secondary[2].lighten(1*delta).desaturate(1*delta) } , -- HTML tag attributes.
    sym'@tag.delimiter'       { fg = mc.Punctuation[1] } , -- Tag delimiters like `<` `>` `/`.
    -- sym'@text'               { } , -- Non-structured text. Like text in a markup language.
    -- sym'@strong'             { } , -- Text to be represented in bold.
    -- sym'@emphasis'           { } , -- Text to be represented with emphasis.
    -- sym'@underline'          { } , -- Text to be represented with an underline.
    -- sym'@strike'             { } , -- Strikethrough text.
    -- sym'@title'              { } , -- Text that is part of a title.
    -- sym'@literal'            { } , -- Literal or verbatim text.
    -- sym'@uRI'                { } , -- URIs like hyperlinks or email addresses.
    -- sym'@math'               { } , -- Math environments like LaTeX's `$ ... $`
    -- sym'@textReference'      { } , -- Footnotes, text references, citations, etc.
    -- sym'@environment'        { } , -- Text environments of markup languages.
    -- sym'@environmentName'    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- sym'@note'               { } , -- Text representation of an informational note.
     --sym'@warning'            { fg = sp.error } , -- Text representation of a warning note.
    -- sym'@danger'             { } , -- Text representation of a danger note.
    sym'@type'               { fg = mc.Annotations[1] } , -- Type (and class) definitions and annotations.
    sym'@type.builtin'        { fg = mc.Annotations.Builtin, gui = 'italic' } , -- Built-in types: `i32` in Rust.

    sym'@class.builtin'({ fg = mc.Symbols.Builtin[1] }),
    sym'@class.builtin.fundamental'({ sym'@class.builtin' }), -- Classes such as Function, Object.
    sym'@class.builtin.error'({ sym'@class.builtin' }), -- Classes such as Error, TypeError.
    sym'@class.builtin.number_or_date'({ sym'@class.builtin' }), -- Classes such as Date, Math.
    sym'@class.builtin.text_processing'({ sym'@class.builtin' }), -- RegExp and String.
    sym'@class.builtin.indexed_collection'({ sym'@class.builtin' }), -- Array and it's variations.
    sym'@class.builtin.keyed_collection'({ sym'@class.builtin' }), -- Set, Map, WeakSet, WeakMap.
    sym'@class.builtin.structured_data'({ sym'@class.builtin' }), -- Classes used for serialization such JSON, ArrayBuffer.
    sym'@class.builtin.control_abstraction'({ sym'@class.builtin' }), -- Classes such as Promise, Generator.
    sym'@class.builtin.reflection'({ sym'@class.builtin' }), -- Reflect and Proxy.
  }
end)

return treesitter;
