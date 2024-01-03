-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		local null_ls = vim.lsp.get_active_clients({ name = "null-ls" })

		if vim.tbl_isempty(null_ls) then
			return
		end

		vim.lsp.buf.format({ name = "null-ls", async = true })
	end,
})

-- [[ Highlight on yank | Source: kickstart.nvim  ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
