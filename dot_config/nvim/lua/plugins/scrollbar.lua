return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "kevinhwang91/nvim-hlslens",
  },
  opts = {},
  config = function()
    require("scrollbar").setup()
    require("gitsigns").setup()
    require("scrollbar.handlers.gitsigns").setup()
    require("scrollbar.handlers.search").setup()
  end,
}
