-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

	use 'junegunn/goyo.vim'
	use 'ap/vim-css-color'
	use 'tpope/vim-commentary'
	use 'kovisoft/slimv'
	use 'vim-syntastic/syntastic'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'dense-analysis/ale'
	use { 'Shougo/vimproc.vim', run = 'make' }
	use 'prabirshrestha/asyncomplete.vim'
	use 'mattn/emmet-vim'
	use 'tpope/vim-fugitive'
	use { 'guns/vim-sexp', ft = 'clojure' }
	use { 'liquidz/vim-iced', ft = 'clojure' }
	use "nvim-lua/plenary.nvim"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2'
	}

	-- for the lua lsp
	use {}
	use { 'williamboman/mason.nvim' }
	use { 'williamboman/mason-lspconfig.nvim'}
	use { 'neovim/nvim-lspconfig' }
	use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }    
	use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' } 
	use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }        -- buffer auto-completion
	use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }          -- path auto-completion
	use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }       -- cmdline auto-completion
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'


    if packer_bootstrap then
        require('packer').sync()
    end
end)

