syntax on
set hidden
set ruler

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set noexpandtab


map Y y$
inoremap jk <Esc>
inoremap kj <Esc>

let mapleader = ","


set history=1000
set wildmode=list:longest

nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

filetype plugin indent on

nmap <leader>l :set list!<CR>

call pathogen#infect()
call pathogen#helptags()
