" init.vim

"""""""""""
" PLUGINS "
"""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'ervandew/matchem'
Plug 'airblade/vim-gitgutter'
Plug 'ajh17/vimcompletesme'

call plug#end()

" set colorscheme
colorscheme monod

" use color coded syntax
syntax enable

" no ruler
set noruler

" enable line numbers
set number

" enable hilighting the cursor line
set cursorline

" highlight as characters are typed
set incsearch

" Turn match hilighting off
let loaded_matchparen = 1 

" disable startup message
set shortmess+=I

filetype plugin indent on

" Use spaces instead of tabs
set expandtab

" set case-unsensitive searching
set ignorecase

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" turn logging off
set viminfo=

" turn mouse off
set mouse=

" set cursor t0 be 5 lines when scrolling
set so=5

" no statusbar
set laststatus=0

" set undo directory
set undodir=$HOME/.config/nvim/undo
set undofile

" save 1000 undos
set undolevels=1000

" no auto comment
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

au BufNewFile *.c 0r ~/.config/nvim/c.skel
au BufNewFile *.html 0r ~/.config/nvim/html.skel

" leader (for custom commands) is space
let mapleader = "\<Space>"

nmap <leader><leader> :CtrlP<CR>
nmap <leader>sv :source ~/.config/nvim/init.vim<CR>

" enter clears search
nnoremap <CR> :noh<CR><CR>:<backspace>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" hjkl 4eva

" y tho
cabbr W w
cabbr Q q
cabbr Wq wq

" disable ex mode
nnoremap Q <nop>

" map ; to :
nnoremap ; :

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
