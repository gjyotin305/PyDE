-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
   requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "catppuccin/nvim", as = "catppuccin" }
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
  }
  use	{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  dependencies = { 'nvim-tree/nvim-web-devicons' },
	  config = function()
	    require('dashboard').setup {
	      theme = 'doom',
	      config = {
		header = {
		  [[                                            ]],
		  [[,-.----.                                    ]],
		  [[\    /  \               ,---,        ,---,. ]],
		  [[|   :    \            .'  .' `\    ,'  .' | ]],
		  [[|   |  .\ :         ,---.'     \ ,---.'   | ]],
		  [[.   :  |: |         |   |  .`\  ||   |   .' ]],
		  [[|   |   \ :    .--, :   : |  '  |:   :  |-, ]],
		  [[|   : .   /  /_ ./| |   ' '  ;  ::   |  ;/| ]],
		  [[;   | |`-', ' , ' : '   | ;  .  ||   :   .' ]],
		  [[|   | ;  /___/ \: | |   | :  |  '|   |  |-, ]],
		  [[:   ' |   .  \  ' | '   : | /  ; '   :  ;/| ]],
		  [[:   : :    \  ;   : |   | '` ,/  |   |    \ ]],
		  [[|   | :     \  \  ; ;   :  .'    |   :   .' ]],
		  [[`---'.|      :  \  \|   ,.'      |   | ,'   ]],
		  [[  `---`       \  ' ;'---'        `----'     ]],
		  [[               `--`                         ]],
                  [[                                            ]],
		},
		center = {
		  {
		    icon = ' ',
		    desc = 'New File                        ',
		    action = 'enew',
		    key = 'n',
		  },
		  {
		    icon = ' ',
		    desc = 'Recently opened files           ',
		    action = 'Telescope oldfiles',
		    key = 'r',
		  },
		  {
		    icon = ' ',
		    desc = 'File Browser                    ',
		    action = 'Telescope file_browser',
		    key = 'f',
		  },
		  {
		    icon = ' ',
		    desc = 'Find Word                       ',
		    action = 'Telescope live_grep',
		    key = 'w',
		  },
		  {
		    icon = ' ',
		    desc = 'Quit Neovim                     ',
		    action = 'qa',
		    key = 'q',
		  },
		},
		footer = {
		  "",
		  "Crafted with ❤️ by gjyotin305",
		},
	      }
	    }
	  end
	}
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
}
end)
