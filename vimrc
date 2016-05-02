" Leader
let mapleader = " "

set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set autowrite

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Set line numbers
set number
set numberwidth=5

" Display whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Mark 80 chars width
set textwidth=80
set colorcolumn=+1

" Set softtabs to 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set Color Scheme
" colors zenburn

" Plugins using Vim-Plug
" Use "PlugInstall to Install Plugins
" --------------------------------------------------
call plug#begin()
Plug 'tpope/vim-sensible'     " Vim Sensible - Decent defaults
Plug 'tpope/vim-surround'     " Vim Surround 
Plug 'scrooloose/nerdtree'    " NerdTree
call plug#end()
