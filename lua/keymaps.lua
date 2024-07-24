-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.keymap.set('n', '<C-t>', ':FloatermNew<CR>', opts)
vim.keymap.set('n', '<C-r>', ':w<CR>',opts)
