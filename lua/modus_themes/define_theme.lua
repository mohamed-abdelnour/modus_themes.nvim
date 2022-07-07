local G = {
    palette = {},
    groups = {},
    modules = {},

    load = function(self, module)
        self.modules[module] = require("modus_themes.modules." .. module)
    end,

    __index = function(self, key)
        return self.palette[key]
    end,

    __newindex = function(self, key, value)
        self.groups[key] = value
        vim.api.nvim_set_hl(0, key, value)
    end,

    new = function(self, palette)
        self.palette = palette
        setmetatable(self, self)
        return self
    end,

    define = function(self, fs)
        fs = fs or self.modules
        self.modules.base(self)
        for _, f in pairs(fs) do
            if f ~= self.modules.base then
                f(self)
            end
        end
    end,
}

local std = function(self)
    self.Bold = { bold = true }
    self.Boolean = { fg = self.magenta_alt }
    self.ColorColumn = { bg = self.bg_hl_line }
    self.Comment = { fg = self.fg_alt }
    self.DiffAdd = { bg = self.bg_diff_focus_added, fg = self.fg_diff_focus_added }
    self.DiffChange = { bg = self.bg_diff_focus_changed, fg = self.fg_diff_focus_changed }
    self.DiffDelete = { bg = self.bg_diff_focus_removed, fg = self.fg_diff_focus_removed }
    self.DiffText = { bg = self.bg_diff_refine_changed, fg = self.fg_diff_refine_changed }
    self.Directory = { fg = self.blue }
    self.EndOfBuffer = { fg = self.bg_main }
    self.FloatBorder = { bg = self.bg_dim, fg = self.fg_window_divider_outer }
    self.FloatShadow = { bg = self.bg_main, blend = 80 }
    self.FloatShadowThrough = { bg = self.bg_main, blend = 100 }
    self.Function = { fg = self.magenta }
    self.Ignore = { bg = self.bg_alt, fg = self.fg_alt }
    self.IncSearch = { bg = self.cyan_refine_bg, fg = self.cyan_refine_fg }
    self.Italic = { italic = true }
    self.Keyword = { fg = self.magenta_alt_other }
    self.Label = { fg = self.red_alt_other }
    self.LineNr = { bg = self.bg_dim, fg = self.fg_alt }
    self.MatchParen = { bg = self.bg_paren_match, fg = self.fg_main }
    self.NonText = { fg = self.fg_unfocused }
    self.None = { fg = "none" }
    self.Normal = { fg = self.fg_main }
    self.Number = { fg = self.blue_alt_other }
    self.Pmenu = { bg = self.bg_dim }
    self.PmenuSel = { bg = self.bg_active, fg = self.fg_main }
    self.PmenuThumb = { bg = self.fg_alt }
    self.SpecialComment = { fg = self.fg_docstring }
    self.SpecialKey = { fg = self.fg_escape_char_construct }
    self.StatusLine = { bg = self.bg_dim, fg = self.fg_active }
    self.StatusLineNC = { bg = self.bg_dim, fg = self.fg_inactive }
    self.String = { fg = self.blue_alt }
    self.Substitute = { bg = self.yellow_refine_bg, fg = self.yellow_refine_fg }
    self.TermCursor = { bg = self.fg_main, fg = self.bg_main }
    self.Title = { fg = self.cyan }
    self.Type = { fg = self.cyan_alt_other }
    self.Underlined = { underline = true }
    self.VertSplit = { fg = self.fg_window_divider_inner }
    self.Visual = { bg = self.bg_region, fg = self.fg_main }
    self.Whitespace = { bg = self.bg_whitespace, fg = self.fg_whitespace }
    -- Extra
    self.Link = { underline = true, fg = self.blue_alt_other }
    self.S1 = { link = "Normal" }
    self.S2 = { fg = self.fg_special_warm }
    self.S3 = { fg = self.fg_special_cold }
    self.S4 = { fg = self.fg_special_mild }
    self.S5 = { fg = self.fg_special_calm }
    self.S6 = { fg = self.yellow_nuanced_fg }
    self.S7 = { fg = self.red_nuanced_fg }
    self.S8 = { fg = self.magenta_nuanced_fg }
    -- Linked
    self.Builtin = { link = "Boolean" }
    self.Character = { link = "Type" }
    self.Conceal = { link = "Directory" }
    self.Conditional = { link = "Keyword" }
    self.Constant = { link = "Number" }
    self.CurSearch = { link = "IncSearch" }
    self.Cursor = { link = "Normal" }
    self.CursorColumn = { link = "ColorColumn" }
    self.CursorIM = { link = "Normal" }
    self.CursorLine = { link = "ColorColumn" }
    self.CursorLineFold = { link = "FoldColumn" }
    self.CursorLineNr = { link = "PmenuSel" }
    self.CursorLineSign = { link = "SignColumn" }
    self.Debug = { link = "Boolean" }
    self.Define = { link = "Label" }
    self.Delimiter = { link = "Normal" }
    self.Exception = { link = "Keyword" }
    self.Float = { link = "Number" }
    self.FoldColumn = { link = "LineNr" }
    self.Folded = { link = "Ignore" }
    self.Identifier = { link = "Title" }
    self.Include = { link = "Keyword" }
    self.LineNrAbove = { link = "LineNr" }
    self.LineNrBelow = { link = "LineNr" }
    self.Macro = { link = "Label" }
    self.ModeMsg = { link = "Normal" }
    self.MoreMsg = { link = "Type" }
    self.MsgArea = { link = "Normal" }
    self.MsgSeparator = { link = "Pmenu" }
    self.NormalFloat = { link = "Pmenu" }
    self.NormalNC = { link = "Normal" }
    self.Operator = { link = "Keyword" }
    self.PmenuSbar = { link = "Pmenu" }
    self.PreCondit = { link = "Label" }
    self.PreProc = { link = "Label" }
    self.Question = { link = "Type" }
    self.Repeat = { link = "Boolean" }
    self.SignColumn = { link = "LineNr" }
    self.Special = { link = "Keyword" }
    self.SpecialChar = { link = "Keyword" }
    self.Statement = { link = "Keyword" }
    self.StorageClass = { link = "Type" }
    self.Structure = { link = "Type" }
    self.TabLine = { link = "Ignore" }
    self.TabLineFill = { link = "None" }
    self.TabLineSel = { link = "PmenuSel" }
    self.Tag = { link = "Boolean" }
    self.TermCursorNC = { link = "TermCursor" }
    self.Todo = { link = "Label" }
    self.Typedef = { link = "Type" }
    self.VisualNC = { link = "Visual" }
    self.VisualNOS = { link = "Visual" }
    self.WildMenu = { link = "PmenuSel" }
    self.WinBar = { link = "StatusLine" }
    self.WinBarNC = { link = "StatusLineNC" }
    self.WinSeparator = { link = "VertSplit" }
    self.lCursor = { link = "Normal" }
end

local diagnostic = function(self)
    -- Base
    self.DiagnosticError = { link = "Label" }
    self.DiagnosticHint = { link = "Number" }
    self.DiagnosticInfo = { link = "Keyword" }
    self.DiagnosticWarn = { fg = self.yellow_alt_other }
    -- Underlined
    self.DiagnosticUnderlineError = { underline = true, sp = self.red_alt_other }
    self.DiagnosticUnderlineHint = { underline = true, sp = self.blue_alt_other }
    self.DiagnosticUnderlineInfo = { underline = true, sp = self.magenta_alt_other }
    self.DiagnosticUnderlineWarn = { underline = true, sp = self.yellow_alt_other }
    -- Signs
    self.DiagnosticSignError = { bg = self.bg_dim, fg = self.red_alt_other }
    self.DiagnosticSignHint = { bg = self.bg_dim, fg = self.blue_alt_other }
    self.DiagnosticSignInfo = { bg = self.bg_dim, fg = self.magenta_alt_other }
    self.DiagnosticSignWarn = { bg = self.bg_dim, fg = self.yellow_alt_other }
    -- Virtual Text
    self.DiagnosticVirtualTextError = { bg = self.red_intense_bg, fg = self.fg_main }
    self.DiagnosticVirtualTextHint = { bg = self.cyan_subtle_bg, fg = self.fg_dim }
    self.DiagnosticVirtualTextInfo = { bg = self.magenta_subtle_bg, fg = self.fg_dim }
    self.DiagnosticVirtualTextWarn = { bg = self.yellow_intense_bg, fg = self.fg_main }
    -- Extra
    self.DiagnosticSignSuccess = { bg = self.bg_dim, fg = self.green_alt_other }
    self.DiagnosticVirtualTextDebug = { bg = self.fg_alt, fg = self.bg_main }
    self.DiagnosticVirtualTextSuccess = { bg = self.green_intense_bg, fg = self.fg_main }
    -- Linked
    self.DiagnosticFloatingError = { link = "DiagnosticError" }
    self.DiagnosticFloatingHint = { link = "DiagnosticHint" }
    self.DiagnosticFloatingInfo = { link = "DiagnosticInfo" }
    self.DiagnosticFloatingWarn = { link = "DiagnosticWarn" }
    self.Error = { link = "DiagnosticError" }
    self.ErrorMsg = { link = "DiagnosticVirtualTextError" }
    self.QuickFixLine = { link = "DiagnosticVirtualTextSuccess" }
    self.Search = { link = "DiagnosticVirtualTextSuccess" }
    self.SpellBad = { link = "DiagnosticVirtualTextError" }
    self.SpellCap = { link = "DiagnosticVirtualTextWarn" }
    self.SpellLocal = { link = "DiagnosticVirtualTextInfo" }
    self.SpellRare = { link = "DiagnosticVirtualTextHint" }
    self.WarningMsg = { link = "DiagnosticVirtualTextWarn" }
end

local lsp = function(self)
    self.LspReferenceText = { bg = self.bg_hl_alt }
    -- Linked
    self.LspCodeLens = { link = "NonText" }
    self.LspReferenceRead = { link = "LspReferenceText" }
    self.LspReferenceWrite = { link = "LspReferenceText" }
end

local miscellaneous = function(self)
    self.NvimInternalError = { link = "DiagnosticVirtualTextError" }
    self.RedrawDebugClear = { link = "DiagnosticVirtualTextWarn" }
    self.RedrawDebugComposed = { link = "DiagnosticVirtualTextSuccess" }
    self.RedrawDebugNormal = { link = "DiagnosticVirtualTextDebug" }
    self.RedrawDebugRecompose = { link = "DiagnosticVirtualTextError" }
end

G.modules.base = function(self)
    std(self)
    diagnostic(self)
    lsp(self)
    miscellaneous(self)
end

local main = function()
    local modules = {
        "cmp",
        "fidget",
        "gitsigns",
        "health",
        "leap",
        "markdown",
        "telescope",
        "tree_sitter",
        "ts_rainbow",
    }

    for i = 1, #modules do
        G:load(modules[i])
    end
end

main()

return G
