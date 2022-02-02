" start with plugins
"
"
" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

" themes
" Plug 'arcticicestudio/nord-vim'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" vim-gitgutter
Plug 'airblade/vim-gitgutter'

" language server protocol thing - inital configs
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

" finder/ sorter picker
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" lightweight powerline replacement
Plug 'itchyny/lightline.vim'

" File browser with git indicators
Plug 'preservim/nerdtree'
" Plug 'vim-scripts/The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" dev icons
" original
" Plug 'ryanoasis/vim-devicons'
" forked
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

filetype plugin indent on

colo darkblue
syntax on
set backspace=indent,eol,start

set number
set hlsearch
set termguicolors

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" split navigation - ctrl + direction
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" split panes to the left and below
set splitbelow
set splitright

let g:lightline = { 'colorscheme': 'one'}
" This hides the mode, don't need it if we using lightline
set noshowmode

" editor colorscheme
" colorscheme nord
colorscheme challenger_deep


