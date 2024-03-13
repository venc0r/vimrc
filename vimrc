" Settings
set noswapfile
set nobackup

set tabstop=8 softtabstop=4
set shiftwidth=4
set foldlevelstart=20
set smarttab
set expandtab
set smartindent
set nohlsearch
set nocompatible
set hidden
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
set sidescrolloff=8
set laststatus=2

set number
set relativenumber
set signcolumn=yes
set colorcolumn=100
set ignorecase
set smartcase
set splitbelow
set splitright

set path+=**
set wildmenu

set background=dark
colorscheme slate

syntax on

" Keymaps
let mapleader = " "

nnoremap Q <nop>
" Y copy end to line
nnoremap Y y$

" stay centered when searching
nnoremap * *zzzv
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-D> <C-D>zzzv
nnoremap <C-U> <C-U>zzzv
nnoremap <C-E> jzzzv
nnoremap <C-Y> kzzzv

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" random binds
nnoremap <C-s> :wa<CR>
nnoremap <Leader>q :bd<CR>zz
inoremap <C-c> <Esc>

" move visible block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" pasteover over
vnoremap <leader>p "_dp
vnoremap <leader>P "_dP

inoremap <C-c> <Esc>

" fileexplorer
nnoremap <leader>e :Explore<CR>

" base64 en/decode
vnoremap <leader>64 "by:let @b=system('base64 --decode', @b)<cr>gv"bP
vnoremap <leader>46 "by:let @b=system('base64', @b)<cr>gv"bP

" replace word under cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" keep highlighted when indenting
vnoremap > >gv
vnoremap < <gv

" strip whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
