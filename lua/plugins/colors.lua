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
      vim.cmd.colorscheme("sonokai")
    end,
  },
}
