return {
  "unblevable/quick-scope",
  event = "BufReadPre",
  config = function()
    vim.g.qs_highlight_on_key = 1

    local function set_qs_colors()
      local primary = vim.api.nvim_get_hl(0, { name = "Function" })
      local secondary = vim.api.nvim_get_hl(0, { name = "Directory" })

      vim.api.nvim_set_hl(0, "QuickScopePrimary", {
        fg = primary.fg,
        underline = true,
        bold = true,
      })
      vim.api.nvim_set_hl(0, "QuickScopeSecondary", {
        fg = secondary.fg,
        underline = true,
      })
    end

    set_qs_colors()

    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = set_qs_colors,
    })
  end,
}
