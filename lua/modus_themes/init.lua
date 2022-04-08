local M = {}

local valid_variant = function(variant)
    local valid = {
        vivendi = true,
        operandi = true,
    }

    if valid[variant] == nil then
        vim.notify(variant .. " is not a valid theme variant.", vim.log.levels.ERROR)
        return false
    else
        return true
    end
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
    local next = next
    for name, group in pairs(define_theme(M.palette)) do
        if next(group) == nil then
            vim.notify(name .. " is not defined.", vim.log.levels.WARN)
        else
            vim.api.nvim_set_hl(0, name, group)
        end
    end
end

M.setup = function(arg)
    arg = arg or {}
    local variant = arg.variant or "vivendi"
    if valid_variant(variant) then
        set_background(variant)
        M.palette = require("modus_themes/palettes/" .. variant)
        set_highlights()
    end
end

M.vivendi = function()
    M.setup({ variant = "vivendi" })
end

M.operandi = function()
    M.setup({ variant = "operandi" })
end

return M
