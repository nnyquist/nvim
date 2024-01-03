local prefix = "<leader>x"
local opts = function(
	s --[[string]]
)
	return { noremap = true, silent = true, desc = s }
end

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		vim.keymap.set("n", prefix .. "x", function()
			require("trouble").toggle()
		end, opts("Toggle Diagnostics")),
		vim.keymap.set("n", prefix .. "w", function()
			require("trouble").toggle("workspace_diagnostics")
		end, opts("Workspace Diagnostics")),
		vim.keymap.set("n", prefix .. "d", function()
			require("trouble").toggle("document_diagnostics")
		end, opts("Document Diagnostics")),
		vim.keymap.set("n", "gR", function()
			require("trouble").toggle("lsp_references")
		end, opts("Toggle LSP References")),
	},
}
