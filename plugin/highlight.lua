print("welcome ")
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" }, -- Match any buffer
  callback = function()

    local lines = vim.api.nvim_buf_get_lines(0, 1 , -1 , false)

    print(lines)
  end,
})

