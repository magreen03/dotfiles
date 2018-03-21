" Section: General Settings
" --------------------------------------------------
let mapleader = ","
set autowrite
set backspace=indent,eol,start " Set normal backspace behavior
set expandtab
set hlsearch
set history=50
set hidden
set laststatus=2
set list listchars=tab:→\ ,trail:·,nbsp:· " Display chars for whitespace
set noswapfile
set nobackup
set nowritebackup
set number " Set line number
set numberwidth=5
set ruler
set shell=zsh " Set bash as the propmp for Vim
set shiftwidth=2
set shiftround
set showcmd
set splitbelow
set splitright
set tabstop=2
let g:jsx_ext_required = 0


" Highlight text that goes long
" https://youtu.be/aHm36-na4-4
highlight ColorColumn ctermbg=DarkCyan
call matchadd('ColorColumn', '\%120v', 100) "set column nr<Paste>


"                              Plugins!
"                     Managed with vim-plug
"                  https://github.com/junegunn/vim-plug
"                  Use PlugInstall to Install Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" UI
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline'            " Handy info
Plug 'retorillo/airline-tablemode.vim'
" Plug 'edkolev/tmuxline.vim'               " Make the Tmux bar match Vim
"Plug 'ryanoasis/vim-webdevicons'
"Plug 'junegunn/goyo.vim'
" Plug 'prettier/vim-prettier', {
"  \ 'do': 'npm install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Project Navigation
" Plug 'mhinz/vim-grepper'
" Plug 'scrooloose/nerdtree'

" File Naviation
Plug 'jeffkreeftmeijer/vim-numbertoggle'  " Smarter line numbers
"Plug 'haya14busa/incsearch.vim'           " Better search highlighting

" Editing
Plug 'tpope/vim-surround'                 " Change word surroundings
Plug 'tpope/vim-commentary'               " Comments stuff
Plug 'tpope/vim-repeat'
"Plug 'Konfekt/FastFold'
Plug 'editorconfig/editorconfig-vim'

" Git
Plug 'tpope/vim-fugitive'                 " Git stuff in Vim
Plug 'airblade/vim-gitgutter'
" Plug 'junegunn/gv.vim',                   { 'on': 'GV' }

" Tasks
" Plug 'w0rp/ale'                           " Linter

" Autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'              " deoplete source for Python
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'alexlafroscia/deoplete-flow',       { 'branch': 'pass-filename-to-autocomplete' }
" Plug 'zchee/deoplete-go'

" Markdown
Plug 'reedes/vim-pencil'                  " Markdown, Writing
Plug 'godlygeek/tabular',                 { 'for': 'markdown' } " Needed for vim-markdown
Plug 'plasticboy/vim-markdown',           { 'for': 'markdown' }

" HTML
Plug 'othree/html5.vim',                  { 'for': 'html' }
Plug 'mattn/emmet-vim'                    " Emmet

" CSS
Plug 'hail2u/vim-css3-syntax',            { 'for': 'css' }

" Sass
Plug 'cakebaker/scss-syntax.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
" Plug 'rhysd/npm-debug-log.vim'

" Python
" Plug 'klen/python-mode',                  { 'for': 'python' }
" Plug 'davidhalter/jedi-vim',              { 'for': 'python' }
" Plug 'alfredodeza/pytest.vim',            { 'for': 'python' }

" Go
" Plug 'fatih/vim-go'
" Plug 'nsf/gocode',                        { 'rtp': 'nvim', 'do': './nvim/symlink.sh' }

call plug#end()

" Plugin Configuration
" --------------------------------------------------

" vim-airline
let g:airline_powerline_fonts = 1 " Enable the patched Powerline fonts

" emmet-vim
let g:user_emmet_leader_key='<C-M>'

let g:user_emmet_settings = {
  \    'html' : {
  \        'quote_char': "'"
  \    }
  \}

" Use deoplete.
" let g:deoplete#enable_at_startup = 1

" Remappings
" --------------------------------------------------
" Leader Commands

" leader-leader : Switch between the last two files
nnoremap <leader><leader> <c-^>
" leader-rv : Reload vimrc
nnoremap <leader>rv :source $MYVIMRC<cr>
" leader-ev : Edit vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>

" Remap : to ;
nnoremap ; :

" NerdTree
nnoremap <leader>nt :NERDTreeToggle %:h<cr>
nnoremap <leader>f: NERDTReeFind<CR>

" Theme
" --------------------------------------------------
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme nova

" Set terminal color for neovim
" ripped from https://github.com/alexlafroscia/dotfiles/blob/master/nvim/init.vim
if has('nvim')
  " dark0 + gray
 " let g:terminal_color_0 = "#282828"
 " let g:terminal_color_8 = "#928374"

  " neurtral_red + bright_red
  let g:terminal_color_1 = "#cc241d"
  let g:terminal_color_9 = "#fb4934"

  " neutral_green + bright_green
  let g:terminal_color_2 = "#98971a"
  let g:terminal_color_10 = "#b8bb26"

  " neutral_yellow + bright_yellow
  let g:terminal_color_3 = "#d79921"
  let g:terminal_color_11 = "#fabd2f"

  " neutral_blue + bright_blue
  let g:terminal_color_4 = "#458588"
  let g:terminal_color_12 = "#83a598"

  " neutral_purple + bright_purple
  let g:terminal_color_5 = "#b16286"
  let g:terminal_color_13 = "#d3869b"

  " neutral_aqua + faded_aqua
  let g:terminal_color_6 = "#689d6a"
  let g:terminal_color_14 = "#8ec07c"

  " light4 + light1
  let g:terminal_color_7 = "#a89984"
  let g:terminal_color_15 = "#ebdbb2"
endif
