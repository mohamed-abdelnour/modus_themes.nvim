return function(p)
    return {
        -- Default and standard groups
        Bold = { bold = true },
        Boolean = { fg = p.magenta_alt },
        ColorColumn = { bg = p.bg_hl_line },
        Comment = { fg = p.fg_alt },
        CursorLineNr = { bg = p.bg_active },
        DiffAdd = { bg = p.bg_diff_focus_added, fg = p.fg_diff_focus_added },
        DiffChange = { bg = p.bg_diff_focus_changed, fg = p.fg_diff_focus_changed },
        DiffDelete = { bg = p.bg_diff_focus_removed, fg = p.fg_diff_focus_removed },
        DiffText = { bg = p.bg_diff_refine_changed, fg = p.fg_diff_refine_changed },
        Directory = { fg = p.blue },
        EndOfBuffer = { fg = p.bg_main },
        FloatBorder = { bg = p.bg_dim, fg = p.fg_window_divider_outer },
        Function = { fg = p.magenta },
        Ignore = { bg = p.bg_alt, fg = p.fg_alt },
        IncSearch = { bg = p.cyan_refine_bg, fg = p.cyan_refine_fg },
        Italic = { italic = true },
        Keyword = { fg = p.magenta_alt_other },
        Label = { fg = p.red_alt_other },
        LineNr = { bg = p.bg_dim, fg = p.fg_alt },
        MatchParen = { bg = p.bg_paren_match, fg = p.fg_main },
        NonText = { fg = p.fg_unfocused },
        None = { fg = "none" },
        Normal = { fg = p.fg_main },
        NormalFloat = { bg = p.bg_dim },
        Number = { fg = p.blue_alt_other },
        Pmenu = { bg = p.bg_alt },
        PmenuSel = { bg = p.cyan_subtle_bg },
        PmenuThumb = { bg = p.fg_alt },
        SpecialComment = { fg = p.fg_docstring },
        SpecialKey = { fg = p.fg_escape_char_construct },
        StatusLine = { bg = p.bg_dim, fg = p.fg_active },
        StatusLineNC = { bg = p.bg_dim, fg = p.fg_inactive },
        String = { fg = p.blue_alt },
        Substitute = { bg = p.yellow_refine_bg, fg = p.yellow_refine_fg },
        TermCursor = { bg = p.fg_main, fg = p.bg_main },
        Title = { fg = p.cyan },
        Type = { fg = p.cyan_alt_other },
        Underlined = { underline = true },
        VertSplit = { fg = p.fg_window_divider_inner },
        Visual = { bg = p.bg_region, fg = p.fg_main },
        Whitespace = { bg = p.bg_whitespace, fg = p.fg_whitespace },
        -- Extra
        Link = { underline = true, fg = p.blue_alt_other },
        S1 = { link = "Normal" },
        S2 = { fg = p.fg_special_warm },
        S3 = { fg = p.fg_special_cold },
        S4 = { fg = p.fg_special_mild },
        S5 = { fg = p.fg_special_calm },
        S6 = { fg = p.yellow_nuanced_fg },
        S7 = { fg = p.red_nuanced_fg },
        S8 = { fg = p.magenta_nuanced_fg },
        -- Linked
        Builtin = { link = "Boolean" },
        Character = { link = "Type" },
        Conceal = { link = "Directory" },
        Conditional = { link = "Keyword" },
        Constant = { link = "Number" },
        CurSearch = { link = "IncSearch" },
        Cursor = { link = "Normal" },
        CursorColumn = { link = "ColorColumn" },
        CursorIM = { link = "Normal" },
        CursorLine = { link = "ColorColumn" },
        Debug = { link = "Boolean" },
        Define = { link = "Label" },
        Delimiter = { link = "Normal" },
        Exception = { link = "Keyword" },
        Float = { link = "Number" },
        FoldColumn = { link = "LineNr" },
        Folded = { link = "Ignore" },
        Identifier = { link = "Title" },
        Include = { link = "Keyword" },
        Macro = { link = "Label" },
        ModeMsg = { link = "Normal" },
        MoreMsg = { link = "Type" },
        MsgArea = { link = "Normal" },
        MsgSeparator = { link = "Pmenu" },
        NormalNC = { link = "Normal" },
        Operator = { link = "Keyword" },
        PmenuSbar = { link = "Pmenu" },
        PreCondit = { link = "Label" },
        PreProc = { link = "Label" },
        Question = { link = "Type" },
        Repeat = { link = "Boolean" },
        SignColumn = { link = "LineNr" },
        Special = { link = "Keyword" },
        SpecialChar = { link = "Keyword" },
        Statement = { link = "Keyword" },
        StorageClass = { link = "Type" },
        Structure = { link = "Type" },
        TabLine = { link = "Ignore" },
        TabLineFill = { link = "None" },
        TabLineSel = { link = "PmenuSel" },
        Tag = { link = "Boolean" },
        TermCursorNC = { link = "TermCursor" },
        Todo = { link = "Label" },
        Typedef = { link = "Type" },
        VisualNOS = { link = "Visual" },
        WildMenu = { link = "PmenuSel" },
        lCursor = { link = "Normal" },

        -- Diagnostic
        -- Base
        DiagnosticError = { link = "Label" },
        DiagnosticHint = { link = "Number" },
        DiagnosticInfo = { link = "Keyword" },
        DiagnosticWarn = { fg = p.yellow_alt_other },
        -- Underlined
        DiagnosticUnderlineError = { underline = true, sp = p.red_alt_other },
        DiagnosticUnderlineHint = { underline = true, sp = p.blue_alt_other },
        DiagnosticUnderlineInfo = { underline = true, sp = p.magenta_alt_other },
        DiagnosticUnderlineWarn = { underline = true, sp = p.yellow_alt_other },
        -- Signs
        DiagnosticSignError = { bg = p.bg_dim, fg = p.red_alt_other },
        DiagnosticSignHint = { bg = p.bg_dim, fg = p.blue_alt_other },
        DiagnosticSignInfo = { bg = p.bg_dim, fg = p.magenta_alt_other },
        DiagnosticSignWarn = { bg = p.bg_dim, fg = p.yellow_alt_other },
        -- Virtual Text
        DiagnosticVirtualTextError = { bg = p.red_intense_bg, fg = p.fg_main },
        DiagnosticVirtualTextHint = { bg = p.cyan_subtle_bg, fg = p.fg_dim },
        DiagnosticVirtualTextInfo = { bg = p.magenta_subtle_bg, fg = p.fg_dim },
        DiagnosticVirtualTextWarn = { bg = p.yellow_intense_bg, fg = p.fg_main },
        -- Extra
        DiagnosticSignSuccess = { bg = p.bg_dim, fg = p.green_alt_other },
        DiagnosticVirtualTextDebug = { bg = p.fg_alt, fg = p.bg_main },
        DiagnosticVirtualTextSuccess = { bg = p.green_intense_bg, fg = p.fg_main },
        -- Linked
        DiagnosticFloatingError = { link = "DiagnosticError" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },
        DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
        Error = { link = "DiagnosticError" },
        ErrorMsg = { link = "DiagnosticVirtualTextError" },
        QuickFixLine = { link = "DiagnosticVirtualTextSuccess" },
        Search = { link = "DiagnosticVirtualTextSuccess" },
        SpellBad = { link = "DiagnosticVirtualTextError" },
        SpellCap = { link = "DiagnosticVirtualTextWarn" },
        SpellLocal = { link = "DiagnosticVirtualTextInfo" },
        SpellRare = { link = "DiagnosticVirtualTextHint" },
        WarningMsg = { link = "DiagnosticVirtualTextWarn" },

        -- LSP
        LspReferenceText = { bg = p.bg_hl_alt },
        -- Linked
        LspCodeLens = { link = "NonText" },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },

        -- Tree-sitter
        TSStrike = { strikethrough = true },
        -- Linked
        TSAnnotation = { link = "PreProc" },
        TSAttribute = { link = "PreProc" },
        TSBoolean = { link = "Boolean" },
        TSCharacter = { link = "Character" },
        TSCharacterSpecial = { link = "SpecialChar" },
        TSComment = { link = "Comment" },
        TSConditional = { link = "Conditional" },
        TSConstBuiltin = { link = "Builtin" },
        TSConstMacro = { link = "Macro" },
        TSConstant = { link = "Constant" },
        TSConstructor = { link = "Type" },
        TSDanger = { link = "DiagnosticVirtualTextError" },
        TSDebug = { link = "Debug" },
        TSDefine = { link = "Define" },
        TSEmphasis = { link = "Italic" },
        TSEnvironment = { link = "Macro" },
        TSEnvironmentName = { link = "Type" },
        TSException = { link = "Exception" },
        TSField = { link = "Identifier" },
        TSFloat = { link = "Float" },
        TSFuncBuiltin = { link = "Builtin" },
        TSFuncMacro = { link = "Macro" },
        TSFunction = { link = "Function" },
        TSInclude = { link = "Include" },
        TSKeyword = { link = "Keyword" },
        TSKeywordFunction = { link = "Keyword" },
        TSKeywordOperator = { link = "TSOperator" },
        TSKeywordReturn = { link = "TSKeyword" },
        TSLabel = { link = "Label" },
        TSLiteral = { link = "String" },
        TSMath = { link = "Special" },
        TSMethod = { link = "Function" },
        TSNamespace = { link = "Include" },
        TSNone = { link = "None" },
        TSNote = { link = "DiagnosticHint" },
        TSNumber = { link = "Number" },
        TSOperator = { link = "Operator" },
        TSParameter = { link = "Identifier" },
        TSParameterReference = { link = "TSParameter" },
        TSPlaygroundFocus = { link = "Visual" },
        TSPlaygroundLang = { link = "String" },
        TSPreProc = { link = "PreProc" },
        TSProperty = { link = "Identifier" },
        TSPunctBracket = { link = "Delimiter" },
        TSPunctDelimiter = { link = "Delimiter" },
        TSPunctSpecial = { link = "Keyword" },
        TSQueryLinterError = { link = "Error" },
        TSRepeat = { link = "Repeat" },
        TSStorageClass = { link = "StorageClass" },
        TSString = { link = "String" },
        TSStringEscape = { link = "SpecialKey" },
        TSStringRegex = { link = "String" },
        TSStringSpecial = { link = "SpecialChar" },
        TSStrong = { link = "Bold" },
        TSSymbol = { link = "Identifier" },
        TSTag = { link = "Label" },
        TSTagAttribute = { link = "TSProperty" },
        TSTagDelimiter = { link = "Delimiter" },
        TSText = { link = "TSNone" },
        TSTextReference = { link = "Constant" },
        TSTitle = { link = "Title" },
        TSTodo = { link = "Todo" },
        TSType = { link = "Type" },
        TSTypeBuiltin = { link = "Builtin" },
        TSTypeDefinition = { link = "Typedef" },
        TSTypeQualifier = { link = "Type" },
        TSURI = { link = "Underlined" },
        TSUnderline = { link = "Underlined" },
        TSVariable = { link = "Normal" },
        TSVariableBuiltin = { link = "Builtin" },
        TSWarning = { link = "DiagnosticWarn" },

        -- health
        healthBar = { link = "None" },
        healthError = { link = "DiagnosticVirtualTextError" },
        healthHelp = { link = "DiagnosticInfo" },
        healthSuccess = { link = "DiagnosticVirtualTextSuccess" },
        healthWarning = { link = "DiagnosticVirtualTextWarn" },

        -- markdown
        markdownCode = { bg = p.bg_dim, fg = p.fg_dim },
        -- Linked
        markdownCodeBlock = { link = "NormalFloat" },
        markdownH1 = { link = "S1" },
        markdownH2 = { link = "S2" },
        markdownH3 = { link = "S3" },
        markdownH4 = { link = "S4" },
        markdownH5 = { link = "S5" },
        markdownH6 = { link = "S6" },
        markdownHeadingDelimiter = { link = "Normal" },
        markdownLinkText = { link = "Link" },

        -- Plug-ins
        -- fidget.nvim
        FidgetTask = { link = "NonText" },
        FidgetTitle = { link = "Title" },

        -- gitsigns.nvim
        GitSignsAdd = { link = "DiagnosticSignSuccess" },
        GitSignsAddInline = { link = "DiffAdd" },
        GitSignsAddLn = { link = "DiffAdd" },
        GitSignsAddLnInline = { link = "DiffAdd" },
        GitSignsAddLnVirtLn = { link = "DiffAdd" },
        GitSignsAddLnVirtLnInline = { link = "DiffAdd" },
        GitSignsAddNr = { link = "DiffAdd" },
        GitSignsChange = { link = "DiagnosticSignWarn" },
        GitSignsChangeInline = { link = "DiffChange" },
        GitSignsChangeLn = { link = "DiffChange" },
        GitSignsChangeLnInline = { link = "DiffChange" },
        GitSignsChangeLnVirtLine = { link = "DiffChange" },
        GitSignsChangeLnVirtLineInline = { link = "DiffChange" },
        GitSignsChangeNr = { link = "DiffChange" },
        GitSignsCurrentLineBlame = { link = "NonText" },
        GitSignsDelete = { link = "DiagnosticSignError" },
        GitSignsDeleteInline = { link = "DiffDelete" },
        GitSignsDeleteLn = { link = "DiffDelete" },
        GitSignsDeleteLnInline = { link = "DiffDelete" },
        GitSignsDeleteLnVirtLine = { link = "DiffDelete" },
        GitSignsDeleteLnVirtLineInline = { link = "DiffDelete" },
        GitSignsDeleteNr = { link = "DiffDelete" },

        -- leap.nvim
        LeapLabelPrimary = { bg = p.red_intense_bg, fg = p.fg_main, underline = true },
        LeapLabelSecondary = { bg = p.cyan_subtle_bg, fg = p.fg_dim, underline = true },
        LeapMatch = { fg = p.red_alt_other, underline = true },
        -- Linked
        LeapBackdrop = { link = "None" },

        -- nvim-ts-rainbow
        rainbowcol2 = { fg = p.magenta_intense },
        rainbowcol5 = { fg = p.cyan_intense },
        rainbowcol6 = { fg = p.orange_intense },
        -- Linked
        rainbowcol1 = { link = "Normal" },
        rainbowcol3 = { link = "DiagnosticInfo" },
        rainbowcol4 = { link = "DiagnosticHint" },
        rainbowcol7 = { link = "DiagnosticError" },

        -- telescope.nvim
        TelescopeBorder = { fg = p.fg_window_divider_outer },
        -- Linked
        TelescopeMatching = { link = "Number" },

        -- trouble.nvim
        TroubleFoldIcon = { link = "markdownHeadingDelimiter" },
        TroubleIndent = { link = "VertSplit" },
        TroubleSignError = { link = "DiagnosticError" },
        TroubleSignHint = { link = "DiagnosticHint" },
        TroubleSignInformation = { link = "DiagnosticInfo" },
        TroubleSignOther = { link = "DiagnosticInfo" },
        TroubleSignWarning = { link = "DiagnosticWarn" },

        -- Miscellaneous
        NvimInternalError = { link = "DiagnosticVirtualTextError" },
        RedrawDebugClear = { link = "DiagnosticVirtualTextWarn" },
        RedrawDebugComposed = { link = "DiagnosticVirtualTextSuccess" },
        RedrawDebugNormal = { link = "DiagnosticVirtualTextDebug" },
        RedrawDebugRecompose = { link = "DiagnosticVirtualTextError" },
    }
end
