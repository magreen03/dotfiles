" Leader
let mapleader = " "

" General Vim Setting
" --------------------------------------------------
set autowrite
set clipboard=unnamed " Use OS clipboard
set history=50
set nobackup
set nowritebackup
set noswapfile
set ruler
set showcmd

" Make backspace behave in a sane manner
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

" Color Scheme
" colors dracula

nnoremap / /\v

" CtrlP commands
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Leaders
" --------------------------------------------------
" space-space : Switch between the last two files
nnoremap <leader><leader> <c-^>
" space-rv : Reload vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>
" space-ev : Edit vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
" NerdTree
nnoremap <leader>nt :NERDTreeToggle %:h<cr>

"  Plugins using Vim-Plug
" Use PlugInstall to Install Plugins
" --------------------------------------------------
call plug#begin()
Plug 'https://github.com/dracula/vim'                   " Dracula Color Theme
Plug 'tpope/vim-sensible'            " Vim Sensible - Decent defaults
Plug 'tpope/vim-surround'            " Vim Surround
Plug 'tpope/vim-fugitive'            " Vim Fugitive
Plug 'scrooloose/nerdtree'           " NerdTree
Plug 'scrooloose/syntastic'          " Syntastic
Plug 'myusuf3/numbers.vim'           " Numbers
Plug 'ctrlpvim/ctrlp.vim'            " Ctrlp -> Fuzzy-finding
Plug 'fatih/vim-go'                  " vim-go
Plug 'chriskempson/tomorrow-theme'   " Tomorrow Color Themes
Plug 'ctrlpvim/ctrlp.vim'            " Fuzzy path finding
Plug 'airblade/vim-gitgutter'        " Git-Gutter plugin
Plug 'editorconfig/editorconfig-vim' " Editorconf
Plug 'junegunn/vim-easy-align'       " Easy alignment
call plug#end()


