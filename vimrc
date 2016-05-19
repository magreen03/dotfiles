" Leader
let mapleader = " "


" General Vim Setting
" --------------------------------------------------

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

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on


" Custom Shortcuts
" --------------------------------------------------

" Switch between the last two files
nnoremap <leader><leader> <c-^>

nnoremap <leader>rv :source $MYVIMRC<CR>

" Plugins using Vim-Plug
" Use "PlugInstall to Install Plugins
" --------------------------------------------------

call plug#begin()
Plug 'tpope/vim-sensible'     " Vim Sensible - Decent defaults
Plug 'tpope/vim-surround'     " Vim Surround
Plug 'scrooloose/nerdtree'    " NerdTree
Plug 'myusuf3/numbers.vim'    " Numbers
Plug 'ctrlpvim/ctrlp.vim'     " Ctrlp -> Fuzzy-finding
call plug#end()
