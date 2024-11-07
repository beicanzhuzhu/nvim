-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

vim.keymap.set('n', '<C-t>', ':FloatermNew<CR>', opts)
vim.keymap.set('n', '<C-s>', ':w<CR>',opts)
vim.keymap.set('n', '<A-m>', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>', opt)
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>', opt)
vim.keymap.set('n', '<C-q>', ':q<CR>',opts)
vim.keymap.set('n', '<C-f>', ':Format<CR>', opts)
vim.keymap.set('n', '<A-h>', '<C-W>h', opts)
vim.keymap.set('n', '<A-l>', '<C-w>l', opts)
