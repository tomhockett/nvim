return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- Pick the theme matching the system appearance at startup, so there's
      -- no flash before auto-dark-mode takes over
      colorscheme = function()
        local dark = vim.fn.system("defaults read -g AppleInterfaceStyle 2>/dev/null"):match("Dark")
        vim.o.background = dark and "dark" or "light"
        vim.cmd.colorscheme(dark and "material-darker" or "github_light")
      end,
    },
  },
  -- Follow the macOS light/dark appearance setting
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    opts = {
      update_interval = 3000,
      set_dark_mode = function()
        vim.o.background = "dark"
        vim.cmd.colorscheme("material-darker")
      end,
      set_light_mode = function()
        vim.o.background = "light"
        vim.cmd.colorscheme("github_light")
      end,
    },
  },
}
