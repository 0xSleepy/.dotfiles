" Env
set nocompatible
set clipboard+=unnamedplus
syntax on
filetype plugin indent on
set mouse=a
set noshowmode
set number
set termguicolors
set tabstop=2
set expandtab
set autoindent 
set shiftwidth=2
set hlsearch
set noswapfile
set nobackup
set incsearch
set relativenumber
set wildignore+=**/.git/*

" Remap key
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

inoremap jk <Esc>
nnoremap <silent> <C-s> :vsplit<CR>
nnoremap <silent> <C-h> :split<Cr>
nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <A-d> <cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR>
tnoremap <silent> <A-d> <C-\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

" Plug
call plug#begin()
Plug 'itchyny/lightline.vim'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ntk148v/vim-horizon'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'glepnir/lspsaga.nvim'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
call plug#end()

lua require('lsp')
lua require('treesitter')
lua require('colors')

