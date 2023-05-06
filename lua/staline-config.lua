require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', '', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#a9b665",
		n = "#a89984",
		c = "#89b482",
		v = "#ea6962",
	},
	defaults = {
		true_colors = true,
		line_column = " %l/%L :%c  並%p%% ",
		branch_symbol = " "
	}
}
