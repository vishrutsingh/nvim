return { "mistricky/codesnap.nvim",
  build = "make build_generator",
  opts = {
    save_path = "~/Pictures",
    has_breadcrumbs = true,
    bg_theme = "bamboo",
  },
  keys = {
    { "<leader>cc", ":CodeSnap<CR>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    { "<leader>cs", ":CodeSnapSave<CR>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
  },
  config = function ()
  require("codesnap").setup({
    mac_window_bar = true,
    title = "CodeSnap.nvim",
    code_font_family = "CaskaydiaCove Nerd Font",
    watermark_font_family = "Pacifico",
    watermark = "",
    bg_theme = "default",
    breadcrumbs_separator = "/",
    has_breadcrumbs = false,
    has_line_number = false,
    show_workspace = false,
    min_width = 0,
    bg_x_padding = 122,
    bg_y_padding = 82,
    save_path = os.getenv("XDG_PICTURES_DIR") or (os.getenv("HOME").. "/Pictures")
  })
end }
