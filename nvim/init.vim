" init.vim

source ~/src/pkg/yuki/ligatures.vim

" plugins {{{

call plug#begin('~/.config/nvim/plugged')

" paren/quote matching
Plug 'jiangmiao/auto-pairs'

" fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

" better file manager
Plug 'tpope/vim-vinegar'

" tab completion
Plug 'ajh17/vimcompletesme'

" haskell
Plug 'neovimhaskell/haskell-vim'

call plug#end()

" }}}

" plugin options {{{

" ctrlp automatically opens in new tab
let g:ctrlp_prompt_mappings = {
            \ 'AcceptSelection("e")': ['<c-t>'],
            \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
            \ }

" close ctrlp's extra tabs
function! CloseEmptyTab()
    " If the buffer does not have a file loaded
    if (len(expand('%:t')) == 0)
        :quit
    end
endfunction

au TabEnter * :call CloseEmptyTab()

" vinegar doesn't show hidden files by default
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

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

" disable startup message
set shortmess+=I

" statusbar
set laststatus=0
 
" set statusline=%2*\ %f\ %1*
" set statusline+=\ %m
" set statusline+=%=
" set statusline+=%p%%\ 
" set statusline+=%2*\ %{&filetype}\ %1*

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

" leader (for custom commands) is space
let mapleader = "\<space>"

nnoremap <leader><leader> :CtrlPMixed<CR>
nnoremap <leader>l :Limelight!!<CR>

nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>

nnoremap <leader>m :silent !mdc %<CR>

nnoremap <leader>j :tabnext<CR>
nnoremap <leader>k :tabprevious<CR>

" enter clears search
" nnoremap <CR> :noh<CR><CR>:<backspace>

" hjkl
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" map ; to :
nnoremap ; :

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

" }}}

" autocommands {{{

au BufWritePost *.md silent !mdk %
au BufNewFile,BufRead *.md Wordmode

" no auto comment
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" use tabs (ugh) in makefiles
au FileType make setlocal noexpandtab

" au filetype c setlocal number

" auto skeleton
au BufNewFile *.c 0r ~/.config/nvim/c.skel

" }}}

" funcs {{{

func! WordProcessorMode() 
  setlocal wrap 
  setlocal linebreak 
  setlocal nonumber
  setlocal nocursorline
endfu 
com! Wordmode call WordProcessorMode()

func! ProgrammingMode()
    setlocal nowrap
    setlocal nolinebreak
    setlocal number
    setlocal cursorline
endfu
com! PM call ProgrammingMode()

" }}}

" misc options {{{

" auto indent
filetype plugin indent on

" turn logging off
set viminfo=

" turn mouse off
set mouse=

" set cursor to be 2 lines when scrolling
set so=2

" folds use {{{ }}}
set foldmethod=marker

" don't fold by default
set foldlevelstart=10

" set undo directory
set undodir=$HOME/.config/nvim/undo
set undofile

" save 1000 undos
set undolevels=1000

" }}}
