" solstice
" by sxthe

set background=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "solstice"

" ui highlighting {{{

hi Normal                 cterm=none             ctermbg=none  ctermfg=3
hi ColorColumn            cterm=none             ctermbg=7     ctermfg=none
hi LineNr                 cterm=none             ctermbg=none  ctermfg=5
hi Cursor                 cterm=none             ctermbg=none  ctermfg=3
hi CursorLine             cterm=none             ctermbg=7     ctermfg=none
hi CursorLineNr           cterm=none             ctermbg=7     ctermfg=1
hi Pmenu                  cterm=none             ctermbg=7     ctermfg=1
hi CursorColumn           cterm=none             ctermbg=7     ctermfg=none
hi SignColumn             cterm=none             ctermbg=none  ctermfg=none
hi Conceal                cterm=none             ctermbg=none  ctermfg=1
hi DiffAdd                cterm=none             ctermbg=2     ctermfg=none
hi DiffDelete             cterm=none             ctermbg=1     ctermfg=none
hi DiffChange             cterm=none             ctermbg=2     ctermfg=none
hi DiffText               cterm=none             ctermbg=2     ctermfg=none
hi Directory              cterm=none             ctermbg=none  ctermfg=1
hi ErrorMsg               cterm=bold             ctermbg=none  ctermfg=1
hi WarningMsg             cterm=bold             ctermbg=none  ctermfg=1
hi Folded                 cterm=none             ctermbg=none  ctermfg=5
hi FoldColumn             cterm=none             ctermbg=none  ctermfg=5
hi IncSearch              cterm=none             ctermbg=7     ctermfg=none
hi Search                 cterm=none             ctermbg=none  ctermfg=none
hi VertSplit              cterm=none             ctermbg=7     ctermfg=7  
hi Visual                 cterm=none             ctermbg=7     ctermfg=none
hi Title                  cterm=none             ctermbg=none  ctermfg=none
hi NonText                cterm=none             ctermbg=none  ctermfg=235
hi SpellBad               cterm=none             ctermbg=none  ctermfg=none
hi SpellCap               cterm=none             ctermbg=none  ctermfg=none
hi StatusLine             cterm=none             ctermbg=7     ctermfg=1
hi StatusLineNC           cterm=none             ctermbg=7     ctermfg=none
hi TabLine                cterm=none             ctermbg=7     ctermfg=none
hi TabLineFill            cterm=none             ctermbg=7     ctermfg=none
hi TabLineSel             cterm=none             ctermbg=7     ctermfg=1
hi MatchParen             cterm=none             ctermbg=none  ctermfg=1

" }}}

hi StartifyPath           cterm=none             ctermbg=none  ctermfg=5
hi StartifySlash          cterm=none             ctermbg=none  ctermfg=5
hi StartifySpecial        cterm=none             ctermbg=none  ctermfg=1 
hi StartifyBracket        cterm=none             ctermbg=none  ctermfg=5
hi StartifyNumber         cterm=none             ctermbg=none  ctermfg=1
hi Sneak                  cterm=none             ctermbg=0     ctermfg=7

" syntax highlighting {{{

hi Comment                cterm=none             ctermbg=none  ctermfg=5
hi Todo                   cterm=none             ctermbg=none  ctermfg=1

hi Constant               cterm=none             ctermbg=none  ctermfg=1
hi Operator               cterm=none             ctermbg=none  ctermfg=3
hi Special                cterm=none             ctermbg=none  ctermfg=1
hi Identifier             cterm=none             ctermbg=none  ctermfg=1
hi Statement              cterm=none             ctermbg=none  ctermfg=3
hi PreProc                cterm=none             ctermbg=none  ctermfg=1
hi Type                   cterm=none             ctermbg=none  ctermfg=1
hi Define                 cterm=none             ctermbg=none  ctermfg=3
hi Function               cterm=none             ctermbg=none  ctermfg=1

" }}}
