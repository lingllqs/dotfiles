return {
  "brianhuster/live-preview.nvim",
  dependencies = { "brianhuster/autosave.nvim" }, -- Not required, but recomended for autosaving
  keys = {
    { "<leader>cp", mode = { "n" }, "<cmd>LivePreview<cr>", desc = "preview in browser" },
  },
  opts = {
    commands = {
      start = "LivePreview", -- Command to start the live preview server and open the default browser.
      stop = "StopPreview", -- Command to stop the live preview.
    },
    port = 5500, -- Port to run the live preview server on.
    browser = "qutebrowser", -- Terminal command to open the browser for live-previewing (eg. 'firefox', 'flatpak run com.vivaldi.Vivaldi'). By default, it will use the default browser.
    dynamic_webroot = false,
  },
}
