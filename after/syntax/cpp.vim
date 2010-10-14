" Vim syntax file
" Language:	C++
" Maintainer:	Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2002 Jul 15

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded

hi Comment ctermfg=yellow
syntax match cppComment "^C.*$"
syntax match cppComment "!.*$"
hi link cppComment Comment
" vim: ts=8
