local M = {}

M.on_attach = function(client, bufnr)
	-- keybind options
	local opts = function(s)
		return { noremap = true, silent = true, buffer = bufnr, desc = s }
	end

	-- keybind helper func
	local nkey = function(binding, action, desc)
		vim.keymap.set("n", binding, action, opts(desc))
	end

	-- default keybindings for LSP
	nkey("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", "[C]ode [A]ction") -- TODO: replace with trouble.nvim
	nkey("gr", "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename Symbol")
	nkey("gd", require("telescope.builtin").lsp_definitions, "Jump to definition")
	nkey("K", "<cmd>lua vim.lsp.buf.hover()<CR>", "Displays hover info in floating window")
end

return M
