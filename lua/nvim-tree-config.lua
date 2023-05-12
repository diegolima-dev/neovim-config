require("nvim-tree").setup {
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  view = {
    adaptive_size = true,
  },
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    root_folder_label = false,
    indent_markers = {
      enable = true
    },
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true
      },
      glyphs = {
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          untracked = "",
          deleted = "",
          ignored = "◌",
        },
      }
    }
  }
}
