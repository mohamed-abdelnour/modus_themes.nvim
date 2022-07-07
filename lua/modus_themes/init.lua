local M = {
    palette = {},
}

local variants = {
    operandi = {
        name = "operandi",
        background = "light",
    },

    vivendi = {
        name = "vivendi",
        background = "dark",
    },

    palette = function(variant)
        vim.opt.background = variant.background
        return require("modus_themes/palettes/" .. variant.name)
    end,
}

local setup = function(variant, arg)
    arg = arg or {}
    M.palette = variants.palette(variant)
    return require("modus_themes/define_theme"):new(M.palette):define(arg.modules)
end

M.operandi = function(arg)
    return setup(variants.operandi, arg)
end

M.vivendi = function(arg)
    return setup(variants.vivendi, arg)
end

return M
