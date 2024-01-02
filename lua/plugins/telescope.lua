local keymap = vim.keymap

local opts = function(s)
    return { noremap = true, silent = true, desc = s }
end

local config = function()
    local telescope = require("telescope")
    telescope.setup({
        defaults = {
            mappings = {
                i = {
                    ["<Tab>"] = "move_selection_next",
                    ["<S-Tab>"] = "move_selection_previous",
                },
            },
        },
        pickers = {
            find_files = { theme = "dropdown" },
            live_grep = { theme = "dropdown" },
            find_buffers = { theme = "dropdown" },
            oldfiles = { theme = "dropdown" },
            help_tags = { theme = "dropdown" },
        },
    })
end

return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = config,
        keys = {
            keymap.set('n', '<leader>?', ':Telescope oldfiles<CR>', opts('[?] Find recently opened files')),
            keymap.set('n', '<leader>sb', ':Telescope buffers<CR>', opts('[S]earch [B]uffers')),
            keymap.set('n', '<leader>gf', ':Telescope git_files<CR>', opts('Search [G]it [F]iles')),
            keymap.set('n', '<leader>sf', ':Telescope find_files<CR>', opts('[S]earch [F]iles')),
            keymap.set('n', '<leader>sh', ':Telescope help_tags<CR>', opts('[S]earch [H]elp')),
            keymap.set('n', '<leader>sg', ':Telescope live_grep<CR>', opts('[S]earch by [G]rep')),
            keymap.set('n', '<leader>sk', ':Telescope keymaps<CR>', opts('[S]earch [K]eymaps')),
        },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    },
}
