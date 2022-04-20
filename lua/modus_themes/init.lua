local M = {
    palette = {},
}

local valid_variant = function(variant)
    local valid = {
        operandi = true,
        vivendi = true,
    }
    return valid[variant]
end

local set_background = function(variant)
    local background = {
        operandi = "light",
        vivendi = "dark",
    }
    vim.opt.background = background[variant]
end

local define_theme = require("modus_themes/define_theme")

local set_highlights = function()
    for name, group in pairs(define_theme(M.palette)) do
        vim.api.nvim_set_hl(0, name, group)
    end
end

M.setup = function(arg)
    arg = arg or {}
    local variant = arg.variant or "vivendi"
    if valid_variant(variant) then
        set_background(variant)
        M.palette = require("modus_themes/palettes/" .. variant)
        set_highlights()
    else
        vim.notify(variant .. " is not a valid theme variant.", vim.log.levels.ERROR)
    end
end

M.operandi = function()
    M.setup({ variant = "operandi" })
end

M.vivendi = function()
    M.setup({ variant = "vivendi" })
end

return M
