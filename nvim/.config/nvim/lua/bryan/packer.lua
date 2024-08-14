-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- use { "catppuccin/nvim", as = "catppuccin" }

use ({ 
	'ellisonleao/gruvbox.nvim',
	as = 'gruvbox',
	config = function()
		vim.cmd('colorscheme gruvbox')
	end
})

-- use {
--     'maxmx03/solarized.nvim',
--     config = function()
--       vim.o.background = 'dark' -- or 'light'
-- 
--       vim.cmd.colorscheme 'solarized'
--     end
-- }

-- use {
--     'EdenEast/nightfox.nvim', -- Packer
--     config = function() 
--         vim.cmd("colorscheme carbonfox")
--     end
-- }

use ({
    "christoomey/vim-tmux-navigator",
--    cmd = {
--        "TmuxNavigateLeft",
--        "TmuxNavigateDown",
--        "TmuxNavigateUp",
--        "TmuxNavigateRight",
--        "TmuxNavigatePrevious",
--    },
--    keys = {
--       { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
--       { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
--       { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
--       { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
--       { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
--   },
    config = function()
        vim.keymap.set('n', '<c-h>', ':<C-U>TmuxNavigateLeft<cr>')
        vim.keymap.set('n', '<c-j>', ':<C-U>TmuxNavigateDown<cr>')
        vim.keymap.set('n', '<c-k>', ':<C-U>TmuxNavigateUp<cr>')
        vim.keymap.set('n', '<c-l>', ':<C-U>TmuxNavigateRight<cr>')
        vim.keymap.set('n', '<c-\\>', ':TmuxNavigatePrevious<cr>')
    end
})

use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
}

use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
})

-- stable version
use {"shortcuts/no-neck-pain.nvim", tag = "*" }

use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

-- Plugins from Primeagen Video
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
	  --- Uncomment these if you want to manage LSP servers from neovim
	  {'williamboman/mason.nvim'},
	  {'williamboman/mason-lspconfig.nvim'},

	  -- LSP Support
	  {'neovim/nvim-lspconfig'},
	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},
	  {'hrsh7th/cmp-nvim-lsp'},
	  {'L3MON4D3/LuaSnip'},
  }
}
end)
