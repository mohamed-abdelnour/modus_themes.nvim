return function(p)
    local g = {}

    -- Default and standard groups
    g.Bold = { bold = true }
    g.Boolean = { fg = p.magenta_alt }
    g.ColorColumn = { bg = p.bg_hl_line }
    g.Comment = { fg = p.fg_alt }
    g.CursorLineNr = { bg = p.bg_active }
    g.DiffAdd = { bg = p.bg_diff_focus_added, fg = p.fg_diff_focus_added }
    g.DiffChange = { bg = p.bg_diff_focus_changed, fg = p.fg_diff_focus_changed }
    g.DiffDelete = { bg = p.bg_diff_focus_removed, fg = p.fg_diff_focus_removed }
    g.DiffText = { bg = p.bg_diff_refine_changed, fg = p.fg_diff_refine_changed }
    g.Directory = { fg = p.blue }
    g.EndOfBuffer = { fg = p.bg_main }
    g.Exception = { fg = p.yellow }
    g.FloatBorder = { bg = p.bg_dim, fg = p.fg_window_divider_outer }
    g.Function = { fg = p.magenta }
    g.Ignore = { bg = p.bg_alt, fg = p.fg_alt }
    g.IncSearch = { bg = p.cyan_refine_bg, fg = p.cyan_refine_fg }
    g.Italic = { italic = true }
    g.Keyword = { fg = p.magenta_alt_other }
    g.Label = { fg = p.red_alt_other }
    g.LineNr = { bg = p.bg_dim, fg = p.fg_alt }
    g.MatchParen = { bg = p.bg_paren_match, fg = p.fg_main }
    g.NonText = { fg = p.fg_unfocused }
    g.None = { fg = "none" }
    g.Normal = { fg = p.fg_main }
    g.NormalFloat = { bg = p.bg_dim }
    g.Number = { fg = p.blue_alt_other }
    g.Pmenu = { bg = p.bg_alt }
    g.PmenuSel = { bg = p.cyan_subtle_bg }
    g.PmenuThumb = { bg = p.fg_alt }
    g.SpecialKey = { fg = p.fg_escape_char_construct }
    g.StatusLine = { bg = p.bg_dim, fg = p.fg_active }
    g.StatusLineNC = { bg = p.bg_dim, fg = p.fg_inactive }
    g.String = { fg = p.blue_alt }
    g.Substitute = { bg = p.yellow_refine_bg, fg = p.yellow_refine_fg }
    g.TermCursor = { bg = p.fg_main, fg = p.bg_main }
    g.Title = { fg = p.cyan }
    g.Type = { fg = p.cyan_alt_other }
    g.Underlined = { underline = true }
    g.VertSplit = { fg = p.fg_window_divider_inner }
    g.Visual = { bg = p.bg_region, fg = p.fg_main }
    g.Whitespace = { bg = p.bg_whitespace, fg = p.fg_whitespace }
    -- Extra
    g.Link = { underline = true, fg = p.blue_alt_other }
    g.S1 = g.Normal
    g.S2 = { fg = p.fg_special_warm }
    g.S3 = { fg = p.fg_special_cold }
    g.S4 = { fg = p.fg_special_mild }
    g.S5 = { fg = p.fg_special_calm }
    g.S6 = { fg = p.yellow_nuanced_fg }
    g.S7 = { fg = p.red_nuanced_fg }
    g.S8 = { fg = p.magenta_nuanced_fg }
    -- Linked
    g.Builtin = g.Boolean
    g.Character = g.Type
    g.Conceal = g.Directory
    g.Conditional = g.Keyword
    g.Constant = g.Number
    g.Cursor = g.Normal
    g.CursorColumn = g.ColorColumn
    g.CursorIM = g.Normal
    g.CursorLine = g.ColorColumn
    g.Debug = g.Boolean
    g.Define = g.Label
    g.Delimiter = g.Normal
    g.Float = g.Number
    g.FoldColumn = g.LineNr
    g.Folded = g.Ignore
    g.Identifier = g.Title
    g.Include = g.Label
    g.Macro = g.Boolean
    g.ModeMsg = g.Normal
    g.MoreMsg = g.Type
    g.MsgArea = g.Normal
    g.MsgSeparator = g.Pmenu
    g.NormalNC = g.Normal
    g.Operator = g.Keyword
    g.PmenuSbar = g.Pmenu
    g.PreCondit = g.Label
    g.PreProc = g.Label
    g.Question = g.Type
    g.Repeat = g.Boolean
    g.SignColumn = g.LineNr
    g.Special = g.Keyword
    g.SpecialChar = g.Keyword
    g.SpecialComment = g.Number
    g.Statement = g.Keyword
    g.StorageClass = g.Type
    g.Structure = g.Type
    g.TabLine = g.Ignore
    g.TabLineFill = g.None
    g.TabLineSel = g.PmenuSel
    g.Tag = g.Boolean
    g.TermCursorNC = g.TermCursor
    g.Todo = g.Label
    g.Typedef = g.Type
    g.VisualNOS = g.Visual
    g.WildMenu = g.PmenuSel
    g.lCursor = g.Normal

    -- Diagnostic
    -- Base
    g.DiagnosticError = g.Label
    g.DiagnosticHint = g.Number
    g.DiagnosticInfo = g.Keyword
    g.DiagnosticWarn = { fg = p.yellow_alt_other }
    -- Signs
    g.DiagnosticSignError = { bg = p.bg_dim, fg = p.red_alt_other }
    g.DiagnosticSignHint = { bg = p.bg_dim, fg = p.blue_alt_other }
    g.DiagnosticSignInfo = { bg = p.bg_dim, fg = p.magenta_alt_other }
    g.DiagnosticSignWarn = { bg = p.bg_dim, fg = p.yellow_alt_other }
    -- Virtual Text
    g.DiagnosticVirtualTextError = { bg = p.red_intense_bg, fg = p.fg_main }
    g.DiagnosticVirtualTextHint = { bg = p.cyan_subtle_bg, fg = p.fg_dim }
    g.DiagnosticVirtualTextInfo = { bg = p.magenta_subtle_bg, fg = p.fg_dim }
    g.DiagnosticVirtualTextWarn = { bg = p.yellow_intense_bg, fg = p.fg_main }
    -- Extra
    g.DiagnosticSignSuccess = { bg = p.bg_dim, fg = p.green_alt_other }
    g.DiagnosticVirtualTextDebug = { bg = p.fg_alt, fg = p.bg_main }
    g.DiagnosticVirtualTextSuccess = { bg = p.green_intense_bg, fg = p.fg_main }
    -- Linked
    g.DiagnosticFloatingError = g.DiagnosticError
    g.DiagnosticFloatingHint = g.DiagnosticHint
    g.DiagnosticFloatingInfo = g.DiagnosticInfo
    g.DiagnosticFloatingWarn = g.DiagnosticWarn
    g.DiagnosticUnderlineError = g.DiagnosticError
    g.DiagnosticUnderlineHint = g.DiagnosticHint
    g.DiagnosticUnderlineInfo = g.DiagnosticInfo
    g.DiagnosticUnderlineWarn = g.DiagnosticWarn
    g.Error = g.DiagnosticError
    g.ErrorMsg = g.DiagnosticVirtualTextError
    g.QuickFixLine = g.DiagnosticVirtualTextSuccess
    g.Search = g.DiagnosticVirtualTextSuccess
    g.SpellBad = g.DiagnosticVirtualTextError
    g.SpellCap = g.DiagnosticVirtualTextWarn
    g.SpellLocal = g.DiagnosticVirtualTextInfo
    g.SpellRare = g.DiagnosticVirtualTextHint
    g.WarningMsg = g.DiagnosticVirtualTextWarn

    -- LSP
    g.LspReferenceText = { bg = p.bg_hl_alt }
    -- Linked
    g.LspCodeLens = g.NonText
    g.LspReferenceRead = g.LspReferenceText
    g.LspReferenceWrite = g.LspReferenceText

    -- Tree-sitter
    g.TSStrike = { strikethrough = true }
    -- Linked
    g.TSAnnotation = g.Label
    g.TSAttribute = g.Label
    g.TSBoolean = g.Boolean
    g.TSCharacter = g.Character
    g.TSComment = g.Comment
    g.TSConditional = g.Conditional
    g.TSConstBuiltin = g.Builtin
    g.TSConstMacro = g.Macro
    g.TSConstant = g.Constant
    g.TSConstructor = g.Type
    g.TSDanger = g.DiagnosticVirtualTextError
    g.TSEmphasis = g.Special
    g.TSEnvironment = g.Macro
    g.TSEnvironmentName = g.Type
    g.TSError = g.DiagnosticError
    g.TSException = g.Exception
    g.TSField = g.Identifier
    g.TSFloat = g.Float
    g.TSFuncBuiltin = g.Builtin
    g.TSFuncMacro = g.Label
    g.TSFunction = g.Function
    g.TSInclude = g.Include
    g.TSKeyword = g.Keyword
    g.TSKeywordFunction = g.Keyword
    g.TSKeywordOperator = g.Operator
    g.TSKeywordReturn = g.Keyword
    g.TSLabel = g.Label
    g.TSLiteral = g.String
    g.TSMath = g.Special
    g.TSMethod = g.Function
    g.TSNamespace = g.Label
    g.TSNone = g.NonText
    g.TSNote = g.SpecialComment
    g.TSNumber = g.Number
    g.TSOperator = g.Operator
    g.TSParameter = g.Identifier
    g.TSParameterReference = g.Identifier
    g.TSProperty = g.Identifier
    g.TSPunctBracket = g.Normal
    g.TSPunctDelimiter = g.Delimiter
    g.TSPunctSpecial = g.Keyword
    g.TSRepeat = g.Repeat
    g.TSString = g.String
    g.TSStringEscape = g.Keyword
    g.TSStringRegex = g.String
    g.TSStringSpecial = g.SpecialChar
    g.TSStrong = g.Bold
    g.TSSymbol = g.Identifier
    g.TSTag = g.Label
    g.TSTagAttribute = g.Identifier
    g.TSTagDelimiter = g.Delimiter
    g.TSText = g.String
    g.TSTextReference = g.Constant
    g.TSTitle = g.Title
    g.TSType = g.Type
    g.TSTypeBuiltin = g.Builtin
    g.TSURI = g.Link
    g.TSUnderline = g.Underlined
    g.TSVariable = g.Normal
    g.TSVariableBuiltin = g.Builtin
    g.TSWarning = g.DiagnosticWarn

    -- health
    g.healthBar = g.None
    g.healthError = g.DiagnosticVirtualTextError
    g.healthHelp = g.DiagnosticInfo
    g.healthSuccess = g.DiagnosticVirtualTextSuccess
    g.healthWarning = g.DiagnosticVirtualTextWarn

    -- markdown
    g.markdownCode = { bg = p.bg_dim, fg = p.fg_dim }
    -- Linked
    g.markdownCodeBlock = g.NormalFloat
    g.markdownH1 = g.S1
    g.markdownH2 = g.S2
    g.markdownH3 = g.S3
    g.markdownH4 = g.S4
    g.markdownH5 = g.S5
    g.markdownH6 = g.S6
    g.markdownHeadingDelimiter = g.Normal
    g.markdownLinkText = g.Link

    -- Plug-ins
    -- fidget.nvim
    g.FidgetTask = g.NonText
    g.FidgetTitle = g.Title

    -- gitsigns.nvim
    g.GitSignsAdd = g.DiagnosticSignSuccess
    g.GitSignsAddInline = g.DiffAdd
    g.GitSignsAddLn = g.DiffAdd
    g.GitSignsAddLnInline = g.DiffAdd
    g.GitSignsAddLnVirtLn = g.DiffAdd
    g.GitSignsAddLnVirtLnInline = g.DiffAdd
    g.GitSignsAddNr = g.DiffAdd
    g.GitSignsChange = g.DiagnosticSignWarn
    g.GitSignsChangeInline = g.DiffChange
    g.GitSignsChangeLn = g.DiffChange
    g.GitSignsChangeLnInline = g.DiffChange
    g.GitSignsChangeLnVirtLine = g.DiffChange
    g.GitSignsChangeLnVirtLineInline = g.DiffChange
    g.GitSignsChangeNr = g.DiffChange
    g.GitSignsCurrentLineBlame = g.NonText
    g.GitSignsDelete = g.DiagnosticSignError
    g.GitSignsDeleteInline = g.DiffDelete
    g.GitSignsDeleteLn = g.DiffDelete
    g.GitSignsDeleteLnInline = g.DiffDelete
    g.GitSignsDeleteLnVirtLine = g.DiffDelete
    g.GitSignsDeleteLnVirtLineInline = g.DiffDelete
    g.GitSignsDeleteNr = g.DiffDelete

    -- leap.nvim
    g.LeapLabelPrimary = { bg = p.red_intense_bg, fg = p.fg_main, underline = true }
    g.LeapLabelSecondary = { bg = p.cyan_subtle_bg, fg = p.fg_dim, underline = true }
    g.LeapMatch = { fg = p.red_alt_other, underline = true }
    -- Linked
    g.LeapBackdrop = g.None

    -- nvim-ts-rainbow
    g.rainbowcol2 = { fg = p.magenta_intense }
    g.rainbowcol5 = { fg = p.cyan_intense }
    g.rainbowcol6 = { fg = p.orange_intense }
    -- Linked
    g.rainbowcol1 = g.Normal
    g.rainbowcol3 = g.DiagnosticInfo
    g.rainbowcol4 = g.DiagnosticHint
    g.rainbowcol7 = g.DiagnosticError

    -- telescope.nvim
    g.TelescopeBorder = { fg = p.fg_window_divider_outer }
    -- Linked
    g.TelescopeMatching = g.Number

    -- trouble.nvim
    g.TroubleFoldIcon = g.markdownHeadingDelimiter
    g.TroubleIndent = g.VertSplit
    g.TroubleSignError = g.DiagnosticError
    g.TroubleSignHint = g.DiagnosticHint
    g.TroubleSignInformation = g.DiagnosticInfo
    g.TroubleSignOther = g.DiagnosticInfo
    g.TroubleSignWarning = g.DiagnosticWarn

    -- Miscellaneous
    g.NvimInternalError = g.DiagnosticVirtualTextError
    g.RedrawDebugClear = g.DiagnosticVirtualTextWarn
    g.RedrawDebugComposed = g.DiagnosticVirtualTextSuccess
    g.RedrawDebugNormal = g.DiagnosticVirtualTextDebug
    g.RedrawDebugRecompose = g.DiagnosticVirtualTextError

    return g
end
