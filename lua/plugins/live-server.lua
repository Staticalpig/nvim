return {
  {
    "hyperstown/nvim-live-server",
    cmd = { "LiveServerStart", "LiveServerStop", "LiveServerToggle" },
    lazy = false,

    -- Don't use opts if you want dynamic configs
    config = function()
      require("live-server").setup({
        host = "0.0.0.0",
        port = 5550,
        open_browser = true,
      })
    end,

    keys = {
      -- Default toggle
      {
        "<leader>sl",
        function()
          require("live-server").start()
        end,
        desc = "Live Server (Local Host)",
      },

      -- Alternate config (example: no browser + different port)
      {
        "<leader>sL",
        function()
          require("live-server").start({
            port = 8081,
            open_browser = false,
          })
        end,
        desc = "Live Server (LAN)",
      },
      {
        "<leader>sX",
        function()
          require("live-server").stop()
        end,
        desc = "Stop Liver server",
      },
    },
  },
}
