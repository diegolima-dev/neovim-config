require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = catppuccin,
	defaults = {
		true_colors = true,
		line_column = " %l/%L :%c  ",
		branch_symbol = " "
	}
}
