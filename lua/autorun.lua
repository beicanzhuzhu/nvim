vim.api.nvim_create_autocmd("FileType", {
        pattern = "python",
        callback = function()
            vim.api.nvim_buf_set_keymap(
                0,
                "n",
                "<F6>",
                ":FloatermNew time python3 % && echo -e \"\\n\\nPush any key to contiue...\" && read -n 1<CR>",
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
                ":FloatermNew g++ -Wall -o %:t:r.out % && time ./%:t:r.out && echo -e \"\\n\\nPush any key to contiue...\" && read -n 1<CR>",
                {noremap = true }
            )
        end,
})
