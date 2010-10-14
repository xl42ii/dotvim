"chtml.vim: html with conceal
set conc=2

syn region inBold concealends matchgroup=bTag start="<b>" end="</b>"
syn match newLine "<br>" conceal cchar=}

hi inBold gui=bold
hi bTag guifg=blue
hi newLine guifg=green
