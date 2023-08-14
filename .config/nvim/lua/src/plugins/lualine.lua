local status, lualine = pcall(require, "lualine")
if not status then
    return "lualine is not installed!"
end

local lualine_gruvbox_dark = require("lualine.themes.gruvbox")

lualine.setup()

