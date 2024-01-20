print("welcome ")
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" }, -- Match any buffer
  callback = function()

    local lines = vim.api.nvim_buf_get_lines(0, 1 , -1 , false)
 -- view('')
    for _, line in ipairs(lines) do
      -- print(k , line)

    local matched = line:match("view%('.*'")
    if matched ~= nil then
      print(matched)
      local string_in_view = string.match(matched , '(.)')
      -- print(string_in_view)
    end
    end
  end,
})

P = function(name)
  return vim.inspect(name)
end

