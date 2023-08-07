return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Buffer tabs
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function() require("bufferline").setup{} end
  }

  -- Comments
  use {
    'terrortylor/nvim-comment',
    config = function() require('nvim_comment').setup {} end
  }

  -- Colorschemes
  use "savq/melange"

  -- Git related plugins
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup {} end
  }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('lualine').setup {} end
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/nvim-lsp-installer',
      'j-hui/fidget.nvim',
    }
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    cond = vim.fn.executable 'make' == 1
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  -- Provides sticky context menu
  use {
    'nvim-treesitter/nvim-treesitter-context',
    after = 'nvim-treesitter',
  }

  -- Additional text objects via treesitter
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  -- A File Explorer For Neovim Written In Lua
  --  use 'kyazdani42/nvim-tree.lua'

  -- Formatter
  --  use 'lukas-reineke/lsp-format.nvim'


  --  Github Copilot
  use 'github/copilot.vim'

end)

