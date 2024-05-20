return {
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_better_performance = 1
      vim.g.sonokai_style = "shusia"
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- require("nordic").load()
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        filter = "ristretto",
      })
    end,
  },
}
