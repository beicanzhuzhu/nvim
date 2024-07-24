require ('plugins')
require ('colorscheme')
require ('options')
require ('keymaps')
require ('lualine').setup({
	options = {
        	theme = 'vscode',
        }    
})
local cfg = {}
require "lsp_signature".setup(cfg)
require('nvim-cmp')
require ('lsp')
