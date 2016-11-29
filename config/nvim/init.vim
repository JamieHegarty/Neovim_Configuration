"------------ Load Vim Plugins --------------

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-sensible'

Plug 'tomasr/molokai'

Plug 'bronson/vim-trailing-whitespace'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'scrooloose/nerdtree'

Plug 'jistr/vim-nerdtree-tabs'

Plug 'kien/rainbow_parentheses.vim'

Plug 'majutsushi/tagbar'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'kien/ctrlp.vim'

Plug 'rking/ag.vim'

Plug 'brookhong/cscope.vim'

call plug#end()

"-------------- General Config --------------

"Color and syntax highlighting

syntax on
filetype on
colorscheme molokai
let g:airline_theme='light'

"Indentation

set expandtab
set tabstop=4
set shiftwidth=2
set et

"Searching

set hlsearch
set number
set incsearch "incremental search
set ignorecase

"Movement & Layout

set mouse=a
set foldmethod=syntax
set foldcolumn=4
set splitright
set splitbelow
set ruler
set cursorline

"------------ Key re-mappings ------------

"Tab navigation

nnoremap tn  :tabnew<Space>

nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>

"Window navigation

nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-l> <C-w>l

"CScope navigation key mappins

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leadeir>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" " g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" " d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" " c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" " t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" " e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" " f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" " i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
