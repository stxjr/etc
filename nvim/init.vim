" init.vim

" plugins {{{

call plug#begin('~/.config/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'ajh17/vimcompletesme'
Plug 'justinmk/vim-sneak'

call plug#end()

" }}}

" plugin options {{{

" startify has recent files
set viminfo='100,n$HOME/.config/nvim/files/info/viminfo

let g:startify_relative_path       = 1
let g:startify_files_number        = 10
let g:startify_enable_special      = 0
let g:startify_change_to_dir       = 1
let g:startify_session_persistence = 0


let g:startify_bookmarks = [
            \ {'c': '~/usr/doc/conlang/vocab.md'},
            \ {'i': '~/.config/nvim/init.vim'},
            \ {'s': '~/.sh.d/alias'},
            \ ]

let g:startify_commands = [
            \ {'f': ['<find file>', 'CtrlPMixed']},
            \ ]

let g:startify_list_order = [
            \ 'files',
            \ 'bookmarks',
            \ 'commands',
            \ ]

let g:startify_custom_header =
            \ map(split(system('tdo'), '\n'), '" ". v:val')

" use s to go to next match with vim-sneak
let g:sneak#s_next = 1

" }}}

" ui changes {{{

" set colorscheme
colorscheme aether

" use color coded syntax
syntax enable

" no ruler
set noruler

" enable line numbers
set number

" no tab line
set showtabline=0

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

nnoremap <leader>s :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>

nnoremap <leader>m :silent !mdc %<CR>

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

" no annoying swap files
set nobackup
set nowritebackup
set noswapfile

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
