return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = true,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
    })
  end,
}
