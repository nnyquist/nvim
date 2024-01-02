return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    lazy = false,
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"lua", "go", "vimdoc", "gitignore"},	
			sync_install = false,
			auto_install = true,
			highlight = { enable = true, additional_vim_regex_highlighting = true },
			indent = { enable = true },
		})
	end
}
