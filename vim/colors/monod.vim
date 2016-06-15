" monod(ark) by sythe

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "monod"

" ui highlighting
hi Normal                 cterm=NONE             ctermbg=NONE  ctermfg=5
hi ColorColumn            cterm=NONE             ctermbg=236   ctermfg=NONE
hi Cursor                 cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi CursorColumn           cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi CursorLine             cterm=NONE             ctermbg=236   ctermfg=NONE
hi DiffAdd                cterm=NONE             ctermbg=10    ctermfg=NONE
hi DiffDelete             cterm=NONE             ctermbg=9     ctermfg=NONE
hi DiffChange             cterm=NONE             ctermbg=11    ctermfg=NONE
hi DiffText               cterm=NONE             ctermbg=11    ctermfg=NONE
hi Directory              cterm=NONE             ctermbg=NONE  ctermfg=1
hi ErrorMsg               cterm=bold             ctermbg=NONE  ctermfg=1
hi FoldColumn             cterm=bold             ctermbg=NONE  ctermfg=0
hi Folded                 cterm=NONE             ctermbg=8     ctermfg=0
hi IncSearch              cterm=NONE             ctermbg=8     ctermfg=NONE
hi LineNr                 cterm=NONE             ctermbg=NONE  ctermfg=8
hi CursorLineNr           cterm=NONE             ctermbg=236   ctermfg=1
hi VertSplit              cterm=NONE             ctermbg=236   ctermfg=253
hi Visual                 cterm=NONE             ctermbg=0     ctermfg=NONE
hi Title                  cterm=NONE             ctermbg=NONE  ctermfg=0
hi NonText                cterm=NONE             ctermbg=NONE  ctermfg=8
hi SpellBad               cterm=NONE             ctermbg=NONE  ctermfg=7
hi SpellCap               cterm=NONE             ctermbg=NONE  ctermfg=NONE
hi StatusLine             cterm=NONE             ctermbg=236   ctermfg=1
hi StatusLineNC           cterm=NONE             ctermbg=236   ctermfg=8
hi TabLine                cterm=NONE             ctermbg=236   ctermfg=8
hi TabLineFill            cterm=NONE             ctermbg=236   ctermfg=NONE
hi TabLineSel             cterm=NONE             ctermbg=236   ctermfg=1
hi MachParen              cterm=NONE             ctermbg=8     ctermfg=NONE

" syntax highlighting
hi Comment                cterm=NONE             ctermbg=NONE  ctermfg=4
hi Todo                   cterm=NONE             ctermbg=NONE  ctermfg=1

hi Constant               cterm=NONE             ctermbg=NONE  ctermfg=1
hi Operator               cterm=NONE             ctermbg=NONE  ctermfg=4
hi Special                cterm=NONE             ctermbg=NONE  ctermfg=1
hi Identifier             cterm=NONE             ctermbg=NONE  ctermfg=7
hi Statement              cterm=NONE             ctermbg=NONE  ctermfg=5
hi PreProc                cterm=NONE             ctermbg=NONE  ctermfg=4
hi Type                   cterm=NONE             ctermbg=NONE  ctermfg=1
hi Define                 cterm=NONE             ctermbg=NONE  ctermfg=5
hi Function               cterm=NONE             ctermbg=NONE  ctermfg=1
