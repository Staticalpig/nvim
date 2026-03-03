return {
  "stevearc/overseer.nvim",
  cmd = { "OverseerRun", "OverseerToggle", "OverseerBuild" },
  opts = {
    strategy = {
      "toggleterm",
      direction = "horizontal",
      auto_scroll = true,
      close_on_exit = false,
    },
    templates = { "builtin" },
  },
  config = function(_, opts)
    require("overseer").setup(opts)
    require("overseer").load_template("builtin")
  end,
  keys = {
    { "<leader>rr", "<cmd>OverseerRun<cr>", desc = "Run task" },
    { "<leader>rt", "<cmd>OverseerToggle<cr>", desc = "Toggle task list" },
    { "<leader>rb", "<cmd>OverseerBuild<cr>", desc = "Build task" },
  },
}
