local config = function()
	local null_ls = require("null-ls")

	null_ls.setup({
		sources = {
			-- lua
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.luacheck,
			-- go
			null_ls.builtins.formatting.goimports,
			null_ls.builtins.formatting.golines,
			null_ls.builtins.diagnostics.golangci_lint,
		},
	})
end

return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	config = config,
}
