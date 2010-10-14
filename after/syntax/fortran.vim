"Tue Feb 16 21:39:28 AST 2010 Shan
"fortran syntax highlighting
"help for irc
"syntax match fortranComment /^[!ca].*$/
hi Comment ctermfg=yellow
syntax keyword fortranComment ifndef contained
syntax match cPreProc /#ifndef.*/ contains=fortranComment


syn match indLev1 /^ \{6}/  contains=ALL
hi indLev1 ctermbg=darkred

syn match indLev2 /^ \{8}/  contains=ALL
hi indLev2 ctermbg=darkred

syn match indLev3 /^ \{10}/ contains=ALL
hi indLev3 ctermbg=darkred

syn match indLev4 /^ \{12}/ contains=ALL
hi indLev4 ctermbg=darkred

syn match indLev5 /^ \{14}/ contains=ALL
hi indLev5 ctermbg=darkred

syn match indLev6 /^ \{16}/ contains=ALL
hi indLev6 ctermbg=darkred

syn match indLev7 /^ \{18}/ contains=ALL
hi indLev7 ctermbg=darkred
