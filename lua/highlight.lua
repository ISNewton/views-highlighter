vim.api.nvim_set_decoration_provider(0, {
  on_buf = function(_, bufnr)
    local decorations = {}
    local view_strings = {}

    

    for _, line in ipairs(vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)) do
      -- local view_match = line:match("view%s*%(.-%)")
      print(line)
    --   if view_match then
    --     -- for string in view_match:gmatch("%b\"\"") do
    --     --   table.insert(view_strings, {
    --     --     start = #decorations + 1,
    --     --     finish = #decorations + #string,
    --     --     hl_group = "ViewString",
    --     --   })
    --     -- end
    --   end

      -- table.insert(decorations, line)
    end

    -- return decorations, view_strings
  end,
})
