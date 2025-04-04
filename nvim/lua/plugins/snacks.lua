return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = false },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = false },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
	  --{ "se", function() Snacks.explorer() end, desc = "File Explorer" },
	  --{ "so", function() Snacks.explorer("~/Document") end, desc = "File Explorer" },
      --{ "sg", function() require("snacks").picker.grep({ cwd = "~/Documents" }) end, { desc = "Grep Docs" },
  },
}
