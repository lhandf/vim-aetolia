" Syntax for Aetolia color_write files

if exists('b:current_syntax')
    finish
endif

let s:concealends = ''
if has('conceal') && get(g:, 'vim_aetolia_conceal', 1)
    let s:concealends = 'concealends '
endif

" Colors

hi def aetAnsiBlack         cterm=NONE  ctermfg=0   ctermbg=240
hi def aetAnsiRed           cterm=NONE  ctermfg=1   ctermbg=NONE
hi def aetAnsiGreen         cterm=NONE  ctermfg=2   ctermbg=NONE
hi def aetAnsiYellow        cterm=NONE  ctermfg=3   ctermbg=NONE
hi def aetAnsiBlue          cterm=NONE  ctermfg=4   ctermbg=NONE
hi def aetAnsiMagenta       cterm=NONE  ctermfg=5   ctermbg=NONE
hi def aetAnsiCyan          cterm=NONE  ctermfg=6   ctermbg=NONE
hi def aetAnsiWhite         cterm=NONE  ctermfg=7   ctermbg=NONE
hi def aetAnsiBoldBlack     cterm=NONE  ctermfg=8   ctermbg=NONE
hi def aetAnsiBoldRed       cterm=NONE  ctermfg=9   ctermbg=NONE
hi def aetAnsiBoldGreen     cterm=NONE  ctermfg=10  ctermbg=NONE
hi def aetAnsiBoldYellow    cterm=NONE  ctermfg=11  ctermbg=NONE
hi def aetAnsiBoldBlue      cterm=NONE  ctermfg=12  ctermbg=NONE
hi def aetAnsiBoldMagenta   cterm=NONE  ctermfg=13  ctermbg=NONE
hi def aetAnsiBoldCyan      cterm=NONE  ctermfg=14  ctermbg=NONE
hi def aetAnsiBoldWhite     cterm=NONE  ctermfg=15  ctermbg=NONE

" ORGHELP links

syn region aetHelpLink matchgroup=aetHelpLink start=/\[\W/ end=/\W\]/
execute 'syn region aetOrgLink      ' . s:concealends . 'matchgroup=aetHelpLink start=/\[\[/ end=/\]\]/'
execute 'syn region aetMainLink     ' . s:concealends . 'matchgroup=aetHelpLink start=/\[</ end=/>\]/'
execute 'syn region aetSkillLink    ' . s:concealends . 'matchgroup=aetHelpLink start=/\[\!/ end=/\!\]/'

hi def link aetOrgLink      aetAnsiBoldWhite
hi def link aetMainLink     aetAnsiBoldWhite
hi def link aetSkillLink    aetAnsiBoldWhite

" Color tags

syn region aetInlineClear matchgroup=aetInlineClear start=/{\(\d\+\|\a\+\)|/ end=/}/
execute 'syn region aetBlack         ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(0\|black\|BLACK\)|/ end=/}/'
execute 'syn region aetRed           ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(1\|red\|RED\)|/ end=/}/'
execute 'syn region aetGreen         ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(2\|green\|GREEN\)|/ end=/}/'
execute 'syn region aetYellow        ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(3\|yellow\|YELLOW\)|/ end=/}/'
execute 'syn region aetBlue          ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(4\|blue\|BLUE\)|/ end=/}/'
execute 'syn region aetMagenta       ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(5\|magenta\|MAGENTA\)|/ end=/}/'
execute 'syn region aetCyan          ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(6\|cyan\|CYAN\)|/ end=/}/'
execute 'syn region aetWhite         ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(7\|white\|WHITE\)|/ end=/}/'
execute 'syn region aetBoldBlack     ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(8\|boldblack\|BOLDBLACK\)|/ end=/}/'
execute 'syn region aetBoldRed       ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(9\|boldred\|BOLDRED\)|/ end=/}/'
execute 'syn region aetBoldGreen     ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(10\|boldgreen\|BOLDGREEN\)|/ end=/}/'
execute 'syn region aetBoldYellow    ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(11\|boldyellow\|BOLDYELLOW\)|/ end=/}/'
execute 'syn region aetBoldBlue      ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(12\|boldblue\|BOLDBLUE\)|/ end=/}/'
execute 'syn region aetBoldMagenta   ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(13\|boldmagenta\|BOLDMAGENTA\)|/ end=/}/'
execute 'syn region aetBoldCyan      ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(14\|boldcyan\|BOLDCYAN\)|/ end=/}/'
execute 'syn region aetBoldWhite     ' . s:concealends . 'matchgroup=aetInlineClear start=/{\(15\|boldwhite\|BOLDWHITE\)|/ end=/}/'

hi def link aetBlack         aetAnsiBlack
hi def link aetRed           aetAnsiRed
hi def link aetGreen         aetAnsiGreen
hi def link aetYellow        aetAnsiYellow
hi def link aetBlue          aetAnsiBlue
hi def link aetMagenta       aetAnsiMagenta
hi def link aetCyan          aetAnsiCyan
hi def link aetWhite         aetAnsiWhite
hi def link aetBoldBlack     aetAnsiBoldBlack
hi def link aetBoldRed       aetAnsiBoldRed
hi def link aetBoldGreen     aetAnsiBoldGreen
hi def link aetBoldYellow    aetAnsiBoldYellow
hi def link aetBoldBlue      aetAnsiBoldBlue
hi def link aetBoldMagenta   aetAnsiBoldMagenta
hi def link aetBoldCyan      aetAnsiBoldCyan
hi def link aetBoldWhite     aetAnsiBoldWhite
