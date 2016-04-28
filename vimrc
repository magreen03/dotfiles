" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Set line numbers
set number

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set Color Scheme
" colors zenburn

" Plugins using Vim-Plug
" Use "PlugInstall to Install Plugins
call plug#begin()

" Vim Sensible - Decent defaults
Plug 'tpope/vim-sensible'

" Vim Surrond  - Adds an cs" to change to "
Plug 'tpope/vim-surround'

" NerdTree
Plug 'scrooloose/nerdtree'
call plug#end()
