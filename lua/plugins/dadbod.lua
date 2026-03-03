return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql", "sqlite", "redis" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      dev_sqlite = "sqlite:~/database.db",
      local_redis = "redis://127.0.0.1:6379",
    }
  end,

  keys = {
    { "<leader>Du", "<cmd>DBUIToggle<cr>", desc = "DBUI Toggle" },
    { "<leader>Df", "<cmd>DBUIFindBuffer<cr>", desc = "DBUI Find Buffer" },
    { "<leader>Dr", "<cmd>DBUIRenameBuffer<cr>", desc = "DBUI Rename Buffer" },
    { "<leader>Dl", "<cmd>DBUILastQueryInfo<cr>", desc = "DBUI Last Query Info" },
  },
}
