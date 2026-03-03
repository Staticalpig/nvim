return {
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        -- your config here
      })
      -- You can keep this, but the LazyVim opts below will usually override it
      vim.cmd("colorscheme github_dark")
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- CHANGE THIS: "github-theme" is the plugin name.
      -- Use "github_dark" or "github_light" for the actual colorscheme.
      colorscheme = "github_dark",
    },
  },
}
