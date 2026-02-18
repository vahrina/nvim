vim.cmd [[packadd packer.nvim]]

-- package manager
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { -- telescope fuzzy finder
	  'nvim-telescope/telescope.nvim',
	  requires = {
          'nvim-lua/plenary.nvim'
      }
  }

  use { "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    }

  use { -- treesitter
	  'nvim-treesitter/nvim-treesitter',
	  lazy = false,
	  run = ':TSUpdate'
  }
  -- harpoon primeagen file selector
  use('theprimeagen/harpoon')
  -- hex colorizer
  use {
      'norcalli/nvim-colorizer.lua',
      config = function()
          require('colorizer').setup()
      end
  }

end)

