local map = vim.api.nvim_set_keymap
-- local kmap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- save
map("n", "<C-s>", ":w<CR>", opts)

-- split navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Adding an empty line below, above and below with insert
map("n", "op", "o<Esc>k", opts)
map("n", "oi", "O<Esc>j", opts)
map("n", "oo", "A<CR>", opts)

-- Nvim tree --------------------------
map("n", "<C-a>", ":NvimTreeToggle<CR>", opts)

-- Create a tab
map("n", "te", ":tabe<CR>", opts)

-- Navigate between buffers
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Press jk fast to enter
map("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Delete a buffer
map("n", "td", ":bd<CR>", opts)

-- Create splits
map("n", "th", ":split<CR>", opts)
map("n", "tv", ":vsplit<CR>", opts)

-- Close splits and others
map("n", "tt", ":q<CR>", opts)

-- Call command shortcut
map("n", "tc", ":!", opts)

-- Telescope
map("n", "<leader>ff", ':lua require("telescope.builtin").find_files()<CR>', opts)
map("n", "<leader>fg", ':lua require("telescope.builtin").live_grep()<CR>', opts)
map("n", "<leader>fb", ':lua require("telescope.builtin").buffers()<CR>', opts)
map("n", "<leader>fh", ':lua require("telescope.builtin").help_tags()<CR>', opts)
