-- options.lua
-- these are the general nvim options that come from the vimrc
--
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.encoding = "utf-8"
vim.opt.showmode = true
vim.opt.title = true
vim.opt.ignorecase = true
vim.opt.swapfile = false
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.matchpairs:append({ "(:)", "<:>" })

vim.cmd 'colorscheme habamax'
vim.opt.background = "dark"
vim.cmd("syntax enable")
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.opt.wrap = true

vim.opt.mouse = "a"
vim.opt.scrolloff = 10

vim.opt.colorcolumn = { 120 }

vim.opt.listchars:append({ tab = "▸ ", trail = "·", precedes = "←", extends = "→", eol = "↲", nbsp = "␣", space = "·" })

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
