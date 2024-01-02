local config = function()
	local null_ls = require("null-ls")
    local timeout_opts = { timeout = 5000 }

	null_ls.setup({
		sources = {
			-- lua
			null_ls.builtins.formatting.stylua,
			null_ls.builtins.diagnostics.luacheck,
			-- go
			null_ls.builtins.formatting.goimports.with(timeout_opts),
			null_ls.builtins.formatting.gofumpt.with(timeout_opts),
			null_ls.builtins.formatting.golines.with(timeout_opts),
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
