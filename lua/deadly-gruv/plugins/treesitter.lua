local lush = require('lush');
    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
    --
    -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
local colors = require('deadly-gruv.colors');
local sp = colors.sp;
local mc = colors.mc;
local delta = require('deadly-gruv.constants').delta

local base = require('deadly-gruv.base');

local treesitter = lush(function()
  return {
    -- Clases.
     TSConstructor        { fg = mc.ClassSymbols[1] } , -- Constructor calls and definitions: `{}` in Lua, Java constructors, python (pd.Dataframe({column: col}))

     TSMethod             { fg = mc.ClassSymbols[3], gui = 'bold' }, -- Method calls and definitions.
     TSParameter          { fg = mc.Symbols[3], gui = 'nocombine' } , -- Parameters of a function.
     TSField              { fg = mc.Symbols[4] } , -- Object and struct fields.
     TSVariable           { fg = mc.Symbols[5], gui='nocombine' } , -- Variable names that don't fit into other categories.
     TSFuncBuiltin        { fg = mc.Symbols[6], gui='nocombine' } , -- Built-in functions: `print` in Lua.
     TSVariableBuiltin        { fg = mc.Symbols[7], gui='nocombine' } , -- Built-in functions: `print` in Lua.
    --
    -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. sp++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in sp.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
     TSConstBuiltin       { fg = mc.ConstantValues[4], gui = 'nocombine' } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in sp.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
     TSException          { fg = mc.ImportantFlowControlStatements.Exceptions } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    -- TSFloat              { } , -- Floating-point number literals.
     TSFunction           { base.Function } , -- Function calls and definitions.
    -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
     TSInclude            { fg = mc.MetaStatements[1], gui = 'italic' } , -- File or module inclusion keywords: `#include` in sp, `use` or `extern crate` in Rust.
     TSKeyword            { fg = mc.FlowControlStatements } , -- Keywords that don't fit into other categories.
     TSKeywordFunction    { fg = mc.DeclarationKeywords[1] } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
     TSKeywordOperator    { fg = mc.Operators[1] } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in sp.
     TSKeywordReturn      { base.Keyword } , -- Keywords like `return` and `yield`.
     TSKeywordDeclaration { fg = mc.DeclarationKeywords[1] } , -- Keywords like `local` in lua, `const` and `let` in ts.
    -- TSLabel              { } , -- GOTO labels: `label:` in sp, and `::label::` in Lua.
    -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in sp.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    TSProperty           { TSField } , -- Same as `TSField`.
     TSPunctDelimiter     { fg = sp.vague } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
    -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
    -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    -- TSTag                {} , -- Tags like HTML tag names.
    TSTagAttribute       { fg = sp.secondary[2].lighten(1*delta).desaturate(1*delta) } , -- HTML tag attributes.
    TSTagDelimiter       { fg = mc.Punctuation[1] } , -- Tag delimiters like `<` `>` `/`.
    -- TSText               { } , -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    -- TSNote               { } , -- Text representation of an informational note.
     --TSWarning            { fg = sp.error } , -- Text representation of a warning note.
    -- TSDanger             { } , -- Text representation of a danger note.
    TSType               { fg = mc.Annotations[1] } , -- Type (and class) definitions and annotations.
    TSTypeBuiltin        { fg = mc.Annotations.Builtin, gui = 'italic' } , -- Built-in types: `i32` in Rust.

    TSClassBuiltin({ fg = mc.Symbols.Builtin[1] }),
    TSClassBuiltinFundamental({ TSClassBuiltin }), -- Classes such as Function, Object.
    TSClassBuiltinError({ TSClassBuiltin }), -- Classes such as Error, TypeError.
    TSClassBuiltinNumberOrDate({ TSClassBuiltin }), -- Classes such as Date, Math.
    TSClassBuiltinTextProcessing({ TSClassBuiltin }), -- RegExp and String.
    TSClassBuiltinIndexedCollection({ TSClassBuiltin }), -- Array and it's variations.
    TSClassBuiltinKeyedCollection({ TSClassBuiltin }), -- Set, Map, WeakSet, WeakMap.
    TSClassBuiltinStructuredData({ TSClassBuiltin }), -- Classes used for serialization such JSON, ArrayBuffer.
    TSClassBuiltinControlAbstraction({ TSClassBuiltin }), -- Classes such as Promise, Generator.
    TSClassBuiltinReflection({ TSClassBuiltin }), -- Reflect and Proxy.
  }
end)

return treesitter;
