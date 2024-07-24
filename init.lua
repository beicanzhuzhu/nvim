require ('plugins')
require ('colorscheme')
require ('options')
require ('keymaps')
require ('lualine').setup({
	options = {
        	theme = 'vscode',
        }
    
})

require('nvim-cmp')
require ('lsp')
