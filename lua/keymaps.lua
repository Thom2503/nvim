vim.api.nvim_set_keymap("n", "<leader>l", ":set list!<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>h", ":nohl<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<C-p>", ":Explore<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>tt", ":below vertical terminal<CR>", { silent = true })

vim.opt.backspace = "indent,eol,start"

vim.opt.wildmode = { "longest", "list", "full" }
vim.opt.wildmenu = true

vim.api.nvim_set_keymap("v", "<C-c>", '"+yi', { noremap = true })
vim.api.nvim_set_keymap("v", "<C-x>", '"+c', { noremap = true })
vim.api.nvim_set_keymap("v", "<C-v>", "c<ESC>'+p", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-v>", "<ESC>'+pa", { noremap = true })

vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true })
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-Left>", ":-tabmove<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-Right>", ":+tabmove<CR>", { noremap = true })


vim.api.nvim_set_keymap("n", "<leader>1", "1gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>2", "2gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>3", "3gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>4", "4gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>5", "5gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>6", "6gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>7", "7gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>8", "8gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>9", "9gt", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>0", "0gt", { noremap = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
