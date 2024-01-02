local M = {}

M.on_attach = function(bufnr)
	-- keybind options
	local opts = function(s)
		return { noremap = true, silent = true, buffer = bufnr, desc = s }
	end

	-- keybind helper func
	local nkey = function(binding, action, desc)
		vim.keymap.set("n", binding, action, opts(desc))
	end

	-- default keybindings for LSP
	nkey("<leader>cf", "<cmd>lua vim.lsp.buf.format()<CR>", "[C]ode [F]ormat")
	nkey("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", "[C]ode [A]ction")
	nkey("<leader>cr", "<cmd>lua vim.lsp.buf.rename()<CR>", "[C]ode [R]ename Symbol")
	nkey("<leader>cd", require("telescope.builtin").diagnostics, "[C]ode [D]iagnostics")
	nkey("gd", require("telescope.builtin").lsp_definitions, "Jump to definition")
	nkey("K", "<cmd>lua vim.lsp.buf.hover()<CR>", "Displays hover info in floating window")
end

return M
