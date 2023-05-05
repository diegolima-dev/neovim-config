require("bufferline").setup {
  options = {
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
  },
	highlights = require("catppuccin.groups.integrations.bufferline").get()
}
