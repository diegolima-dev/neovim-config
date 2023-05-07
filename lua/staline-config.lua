require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', '', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#a6d189",
		n = "#8caaee",
		c = "#ef9f76",
		v = "#ca9ee6",
	},
	defaults = {
		true_colors = true,
		line_column = " %l/%L :%c  並%p%% ",
		branch_symbol = " "
	}
}
