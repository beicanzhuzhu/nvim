-- Tab
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

-- UI config
vim.opt.number = true -- show absolute number
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right

vim.opt.mouse = 'a'
vim.o.whichwrap = "<,>,[,]"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 禁止折行
vim.wo.wrap = false
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,],h,l"
-- 补全显示10行
vim.o.pumheight = 10
vim.o.clipboard = "unnamedplus"

--设置浮动终端
vim.g.floaterm_height = 0.8
vim.g.floaterm_width = 0.9
