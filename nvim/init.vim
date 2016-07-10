" init.vim

" plugins {{{

call plug#begin('~/.config/nvim/plugged')

" paren/quote matching
Plug 'ervandew/matchem'

" show git changes in gutter
Plug 'airblade/vim-gitgutter'

" tab completion in insert mode
Plug 'ajh17/vimcompletesme'

" better file manager
Plug 'tpope/vim-vinegar'
    " don't show hidden files by default
    " gh to toggle
    let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

call plug#end()

" }}}

" colors {{{

" set colorscheme
colorscheme shiro

" use color coded syntax
syntax enable

" }}}

" ui changes {{{

" no ruler
set noruler

" enable line numbers
set number

" highlight search as characters are typed
set incsearch

" highlight the cursor line
set cursorline

" no match highlighting
" let loaded_matchparen = 1

" disable startup message
set shortmess+=I

" no statusbar
set laststatus=0

" }}}

" tab options {{{

" Use spaces instead of tabs
set expandtab

" set case-unsensitive searching
set ignorecase

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" }}}

" bindings {{{

" leader (for custom commands) is comma
let mapleader = "\\"

nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>

" enter clears search
nnoremap <CR> :noh<CR><CR>:<backspace>

" hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" fast fingers
cabbr W w
cabbr Q q
cabbr Wq wq

" disable annoying things
nnoremap Q <nop>
nnoremap q: <nop>

" w!! sudo saves file
cmap w!! w !sudo tee % >/dev/null

" jj in insert mode enters normal mode
inoremap jj  <ESC>

" j and k (up and down) can navigate long lines easierly
map j gj
map k gk

" ctrl-hjkl switches panes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" }}}

" autocommands {{{

" auto save on focus lost
au FocusLost * silent! wa

" no auto comment
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" auto skeletons
au BufNewFile *.c 0r ~/.config/nvim/c.skel
au BufNewFile *.html 0r ~/.config/nvim/html.skel

" }}}

" misc options {{{

" auto indent
filetype plugin indent on

" turn logging off
set viminfo=

" turn mouse off
set mouse=

" set cursor t0 be 2 lines when scrolling
set so=2

" folds use {{{ }}}
set foldmethod=marker

" don't fold by default
set foldlevelstart=1

" set undo directory
set undodir=$HOME/.config/nvim/undo
set undofile

" save 1000 undos
set undolevels=1000

" }}}
