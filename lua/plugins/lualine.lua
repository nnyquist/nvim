local config = function()
	local theme = require("lualine.themes.palenight")
	theme.normal.c.gb = nil

	require("lualine").setup({
		options = {
			theme = theme,
			globalstatus = true,
		},
		sections = {
			lualine_a = {
				{ "buffers" },
			},
			lualine_x = {
				{
					require("noice").api.statusline.mode.get,
					cond = require("noice").api.statusline.mode.has,
					color = { fg = "#ff9e64" },
				},
			},
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = config,
}
