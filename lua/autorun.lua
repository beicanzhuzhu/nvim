local info = debug.getinfo(1, "S") -- 第二个参数 "S" 表示仅返回 source,short_src等字段， 其他还可以 "n", "f", "I", "L"等 返回不同的字段信息
 
local path = info.source
 
path = string.sub(path, 2, -1) -- 去掉开头的"@"
 
path = string.match(path, "^.*/") -- 捕获最后一个 "/" 之前的部分 就是我们最终要的目录部分

vim.api.nvim_create_autocmd("FileType", {
        pattern = "python",
        callback = function()
            vim.api.nvim_buf_set_keymap(
                0,
                "n",
                "<F6>",
                ":FloatermNew python "..path.."../py/autorun.py %:t<CR>", 
                {noremap = true }
            )
        end,
})

vim.api.nvim_create_autocmd("FileType", {
        pattern = "cpp",
        callback = function()
            vim.api.nvim_buf_set_keymap(
                0,
                "n",
                "<F6>", 
                ":FloatermNew python "..path.."../py/autorun.py %:t<CR>",
                {noremap = true }
            )
        end,
})
