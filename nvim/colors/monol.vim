" shiro by sythe

set background=light
hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "shiro"

" grey = 0
" light grey = 8
" white = 7
"
" red = 1
" green = 2
" yellow = 3
" blue = 4
" magenta (purple) = 5
" cyan = 6

" ui highlighting
hi Normal                 cterm=NONE             ctermbg=NONE  ctermfg=2
hi ColorColumn            cterm=NONE             ctermbg=253   ctermfg=NONE
hi Cursor                 cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi CursorColumn           cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi CursorLine             cterm=NONE             ctermbg=253   ctermfg=NONE
hi DiffAdd                cterm=NONE             ctermbg=2     ctermfg=NONE
hi DiffDelete             cterm=NONE             ctermbg=1     ctermfg=NONE
hi DiffChange             cterm=NONE             ctermbg=2     ctermfg=NONE
hi DiffText               cterm=NONE             ctermbg=2     ctermfg=NONE
hi Directory              cterm=NONE             ctermbg=NONE  ctermfg=1
hi ErrorMsg               cterm=bold             ctermbg=NONE  ctermfg=1
hi FoldColumn             cterm=bold             ctermbg=NONE  ctermfg=0
hi Folded                 cterm=NONE             ctermbg=NONE  ctermfg=2
hi IncSearch              cterm=NONE             ctermbg=251   ctermfg=NONE
hi Search                 cterm=NONE             ctermbg=251   ctermfg=NONE
hi LineNr                 cterm=NONE             ctermbg=NONE  ctermfg=4
hi CursorLineNr           cterm=NONE             ctermbg=253   ctermfg=1
hi VertSplit              cterm=NONE             ctermbg=253   ctermfg=253
hi Visual                 cterm=NONE             ctermbg=251   ctermfg=NONE
hi Title                  cterm=NONE             ctermbg=NONE  ctermfg=0
hi NonText                cterm=NONE             ctermbg=NONE  ctermfg=0
hi SpellBad               cterm=NONE             ctermbg=NONE  ctermfg=7
hi SpellCap               cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi StatusLine             cterm=NONE             ctermbg=253   ctermfg=1
hi StatusLineNC           cterm=NONE             ctermbg=253   ctermfg=0
hi TabLine                cterm=NONE             ctermbg=253   ctermfg=0
hi TabLineFill            cterm=NONE             ctermbg=253   ctermfg=NONE
hi TabLineSel             cterm=NONE             ctermbg=253   ctermfg=1
hi MatchParen             cterm=NONE             ctermbg=NONE  ctermfg=1

" syntax highlighting
hi Comment                cterm=NONE             ctermbg=NONE  ctermfg=4
hi Todo                   cterm=NONE             ctermbg=NONE  ctermfg=1

hi Constant               cterm=NONE             ctermbg=NONE  ctermfg=1
hi Operator               cterm=NONE             ctermbg=NONE  ctermfg=4
hi Special                cterm=NONE             ctermbg=NONE  ctermfg=2
hi Identifier             cterm=NONE             ctermbg=NONE  ctermfg=4
hi Statement              cterm=NONE             ctermbg=NONE  ctermfg=1
hi PreProc                cterm=NONE             ctermbg=NONE  ctermfg=2
hi Type                   cterm=NONE             ctermbg=NONE  ctermfg=4
hi Define                 cterm=NONE             ctermbg=NONE  ctermfg=2
hi Function               cterm=NONE             ctermbg=NONE  ctermfg=1
