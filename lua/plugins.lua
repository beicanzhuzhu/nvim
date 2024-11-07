local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	'Mofiqul/vscode.nvim',
    "kyazdani42/nvim-tree.lua",
    event='VeryLazy',
    'akinsho/bufferline.nvim',
	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
	
	--补全插件
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	config=function()
		require('luasnip.loaders.from_vscode()').lazy_load()
	end,
	'chrisgrieser/cmp-nerdfont',
	'onsails/lspkind.nvim',
    -- LSP manager
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

    'windwp/nvim-autopairs',
    event = "InsterEnter",
    config = true,

    'voldikss/vim-floaterm',

    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    opts = {},
    config = function(_,opts) 
	    require'lsp_signature'.setup(opts) 
    end
})

