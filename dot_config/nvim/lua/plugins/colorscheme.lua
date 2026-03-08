-- return {
--   "maxmx03/solarized.nvim",
--   lazy = false,
--   priority = 1000,
--   ---@type solarized.config
--   opts = {},
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = "light"
--     require("solarized").setup(opts)
--     vim.cmd.colorscheme("solarized")
--   end,
-- }
-- return {
--   "calind/selenized.nvim",
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = "light"
--     -- require("solarized").setup(opts)
--     vim.cmd.colorscheme("selenized")
--   end,
-- }

return {
  {
    "catppuccin/nvim",
    opts = {
      background = {
        dark = "frappe",
      },
      auto_integrations = true,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
