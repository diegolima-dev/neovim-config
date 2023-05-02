require('opener').setup {
    pre_open = function(new_dir)
        print("Yay, opening " .. new_dir .. " in a moment")
    end,
    post_open = { "NvimTreeOpen", function(new_dir)
        print(new_dir .. " was opened")
    end}
}

vim.api.nvim_set_keymap("n", "<leader>o", ":Telescope opener<cr>", { noremap = true, silent = true })
