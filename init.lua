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
require('signature')
require('nvim-cmp')
require ('lsp')
require ('nvim_tree')
require("autorun")
require("bufline")
require("format")
