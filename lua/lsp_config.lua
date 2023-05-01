require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "solargraph" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

require("lspconfig").solargraph.setup {
  capabilities = capabilities,
}

require("lspconfig")["emmet_ls"].setup ({
  capabilities = capabilities,
})

require("lspconfig")["html"].setup ({
  capabilities = capabilities,
})

require("lspconfig")["quick_lint_js"].setup ({
  capabilities = capabilities,
})

require("lspconfig")["cssls"].setup ({
  capabilities = capabilities,
})