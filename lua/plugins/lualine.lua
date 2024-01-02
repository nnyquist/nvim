local config = function()
    local theme = require("lualine.themes.palenight")
    theme.normal.c.gb = nil

    require("lualine").setup {
        options = {
            theme = theme,
            globalstatus = true,
        },
        sections = {
            lualine_a = {
                { "buffers" },
            },
        },
    }
end

return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = config,
}
