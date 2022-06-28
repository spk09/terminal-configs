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
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

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

" nvim-tmux-navigation
Plug 'alexghergh/nvim-tmux-navigation'

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

" split navigation - we have 2 ways - ive commented out the just nvim way
" 1 - ctrl + direction
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
" 2 - tmuxnavigator plugin
nnoremap <silent> <C-h> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
nnoremap <silent> <C-j> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
nnoremap <silent> <C-k> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
nnoremap <silent> <C-l> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>
nnoremap <silent> <C-\> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>
nnoremap <silent> <C-Space> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>
" end split navigation

" split panes to the left and below
set splitbelow
set splitright

let g:lightline = { 'colorscheme': 'one'}
" This hides the mode, don't need it if we using lightline
set noshowmode

" Telescope (find file) bindings
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fd <cmd>Telescope git_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" 

" editor colorscheme
" colorscheme nord
colorscheme challenger_deep


