return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>b"] = {
                name = "[B]uffers",
                l = { "<C-^>", "[B]uffer, [L]ast" },
                n = { ":bn<CR>", "[B]uffer [N]ext"},
                p = { ":bp<CR>", "[B]uffer [P]revious"},
            },
            ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
            ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
            ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
            ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
            ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
            -- ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
            ['<leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' },
        })
    end
}
