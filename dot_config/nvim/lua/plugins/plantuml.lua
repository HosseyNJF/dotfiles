return {
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {
      processor = "magick_cli",
      tmux_show_only_in_active_window = true,
    },
  },
  {
    "https://gitlab.com/itaranto/preview.nvim",
    version = "*",
    dependencies = {
      "aklt/plantuml-syntax",
    },
    opts = {
      previewers_by_ft = {
        plantuml = {
          name = "plantuml_png",
          renderer = { type = "image_nvim", opts = { ext = "png" } },
        },
      },
      render_on_write = true,
    },
  },
}
