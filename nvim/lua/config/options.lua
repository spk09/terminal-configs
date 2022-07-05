-- vim options moved from my vimrc
-- vim = set <foo>=<bar>
-- lua = vim.opt.<foo> = <bar>
vim.opt.backspace = { "indent", "eol", "start"}
vim.opt.number = true
vim.opt.hlsearch = true
vim.opt.termguicolors = true

-- plugins
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')

-- themes
-- Plug 'arcticicestudio/nord-vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

-- vim-gitgutter
Plug 'airblade/vim-gitgutter'

-- language server protocol thing - inital configs
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

-- Completion
Plug 'hrsh7th/nvim-cmp'

-- finder/ sorter picker
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

-- dev icons
-- original
-- Plug
-- Plug 'ryanoasis/vim-devicons'
-- forked
Plug 'kyazdani42/nvim-web-devicons'

-- nvim-tmux-navigation
Plug 'alexghergh/nvim-tmux-navigation'
 
vim.call('plug#end')
