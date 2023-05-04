local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'tamton-aquib/staline.nvim'

  -- vim move
  use 'matze/vim-move'

  -- theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- opener
  use "willthbill/opener.nvim"

  -- Cooment nvim
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Auto completar
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-path"

  -- Motor de Snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  -- Servidor de linguagens
  use "williamboman/nvim-lsp-installer"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"

  -- Utilitários
  use 'windwp/nvim-autopairs'
  use 'brenoprata10/nvim-highlight-colors'
  use "lewis6991/gitsigns.nvim"

  -- Dependências
  use "nvim-lua/plenary.nvim"
  use 'nvim-tree/nvim-web-devicons'
  use "MunifTanjim/nui.nvim"

  -- Interface
  use "lukas-reineke/indent-blankline.nvim"
  use "nvim-treesitter/nvim-treesitter"
  -- use "nvim-lualine/lualine.nvim"
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'goolord/alpha-nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Toggleterm
  use {'akinsho/toggleterm.nvim', tag = 'v2.*'}

  -- Live Server
  use({
  "aurum77/live-server.nvim",
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  })
end)
