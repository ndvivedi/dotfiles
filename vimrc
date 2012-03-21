set nocompatible
set hidden
set ruler
set ffs=unix,dos,mac
set isk+=_,$,@,%,#,-

set autoread

set hlsearch
syntax on

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set noexpandtab

set nobackup
set nowritebackup
set noswapfile

set noshowcmd
set number
set wildmenu
set wildmode=list:longest

set backspace=2 " backspace over everything



map Y y$
inoremap jk <Esc>
inoremap kj <Esc>

" movement wordwrap blahblah
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

let mapleader = ","

" duplicate current tab with same file+line
" map <leader>t :tabnew %<CR>

" open directory dirname of current file, and in new tab
" map <leader>d :e %:h/<CR>
" map <leader>dt :tabnew %:h/<CR>

" open gf under cursor in new tab
" map <leader>f :tabnew <cfile><CR>


set history=1000

nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

filetype plugin indent on

nmap <leader>l :set list!<CR>

" call pathogen#infect()
" call pathogen#helptags()
