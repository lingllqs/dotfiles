return {
  "folke/flash.nvim",
  lazy = true,
  opts = {},
  keys = {
    { "<leader>s", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
