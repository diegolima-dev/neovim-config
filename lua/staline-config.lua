require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#7daea3",
		n = "#a9b665",
		c = "#e78a4e",
		v = "#d8a657",
	},
	defaults = {
		true_colors = true,
		line_column = "%l/%L :%c  並%p%%",
		branch_symbol = " "
	}
}
