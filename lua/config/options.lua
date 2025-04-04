vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.list = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"

vim.opt.showcmd = true
vim.opt.conceallevel = 1
vim.opt.clipboard = "unnamed"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.showmode = false

-- Custom highlights
vim.api.nvim_set_hl(0, "@markup.heading.1.markdown", { fg = "#e6c385", bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.2.markdown", { fg = "#fea067", bold = true })
vim.api.nvim_set_hl(0, "@markup.heading.3.markdown", { fg = "#e92424", bold = true })
vim.api.nvim_set_hl(0, "@markup.strong.markdown_inline", { fg = "#99bd6d", bold = true, default = false })
vim.api.nvim_set_hl(0, "@markup.italic.markdown_inline", { fg = "#fe5d63", italic = true, default = false })
