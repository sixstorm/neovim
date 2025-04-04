-- Basics
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":bprev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":bnext<CR>", { noremap = true, silent = true })

-- Obsidian
vim.keymap.set("n", "os", ":ObsidianSearch<cr>")
vim.keymap.set("n", "ofl", ":ObsidianFollowLink<cr>")
vim.keymap.set("n", "on", ":ObsidianNew<cr>")
vim.keymap.set("n", "oq", ":ObsidianQuickSwitch<cr>")

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
--vim.keymap.set("n", "<leader>fd", function() require("plugins.telescope").Cd("/Users/andrewscott/Documents") end, {  })
--vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")

-- Snacks
vim.keymap.set('n', 'z=', function() Snacks.picker.spelling() end, { desc = 'Spell suggestion' })

-- Mini
--vim.keymap.set('n', 'fd', ":lua MiniFiles.open('/Users/andrewscott/Documents')<CR>")
--vim.keymap.set('n', 'fo', ":lua MiniFiles.open('/Users/andrewscott/Library/Mobile Documents/iCloud~md~obsidian/Documents/Focus')<CR>")
--/Users/andrewscott/Library/Mobile Documents/iCloud~md~obsidian/Documents/Focus
