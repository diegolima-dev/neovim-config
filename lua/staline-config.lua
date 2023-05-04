require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#a6d189",
		n = "#85c1dc",
		c = "#e78284",
		v = "#f4b8e4",
	},
	defaults = {
		true_colors = true,
		line_column = " %l/%L :%c  ",
		branch_symbol = " "
	}
}
