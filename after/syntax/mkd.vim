" # Headings
syntax match mkdHeading /^#.*/ contains=mkdCode,mkdInlineLink,mkdRefLink
syntax match mkdHeadingMarker /^#\+\s*/ conceal contained containedin=mkdHeading

" Italic text.
syntax region mkdItalic matchgroup=mkdMarker start=/\\\@<!\*/ end=/\\\@<!\*/ concealends

" Bold text.
syntax region mkdBold matchgroup=mkdMarker start=/\\\@<!\*\*/ end=/\\\@<!\*\*/ concealends

" Inline `code` fragments.
syntax region mkdCode matchgroup=mkdMarker start=/\\\@<!`/ end=/\\\@<!`/ concealends

" Pre-formatted code blocks.
syntax match mkdCodeBlock /\(\_^    .*\)\+/ contains=@NoSpell

" <literal-link-syntax>
syntax match mkdLiteralLink !<\(\w\+://[^>]\+\|[^ \t\n>@]\+@[^ \t\n>]\+\)>! contains=@NoSpell
syntax match mkdLiteralLinkMarker /[<>]/ conceal contained containedin=mkdLiteralLink

" [inline](link://syntax)
syntax match mkdInlineLink /\[\_[^\]]\+]([^)]\+)/
syntax match mkdInlineLinkLabel /\[\@<=\_[^\]]\+]\@=/ contained containedin=mkdInlineLink contains=@NoSpell
syntax match mkdInlineLinkTarget /(\@<=[^)]\+)\@=/ contained containedin=mkdInlineLinkEnd contains=@NoSpell
syntax match mkdInlineLinkStart /\[/ conceal contained containedin=mkdInlineLink
syntax match mkdInlineLinkEnd /]([^)]\+)/ conceal contained containedin=mkdInlineLink

" [reference][link-syntax]
syntax match mkdRefLink /\[\_[^\]]\+]\s*\[[^\]]\+]/
syntax match mkdRefLinkLabel /\[\@<=\_[^\]]\+\%(]\s*\[\)\@=/ contained containedin=mkdRefLink contains=@NoSpell
syntax match mkdRefLinkName /\%(]\s*\[\)\@<=[^\]]\+]\@=/ contained containedin=mkdRefLinkEnd contains=@NoSpell
syntax match mkdRefLinkStart /\[/ conceal contained containedin=mkdRefLink
syntax match mkdRefLinkEnd /]\s*\[[^\]]\+]/ conceal contained containedin=mkdRefLink

" [reference]: definitions
syntax match mkdRefDef /^\[[^\]]\+]:\s\+.*/
syntax match mkdRefDefName /\(^\[\)\@<=[^\]]\+]\@=/ contained containedin=mkdRefDef contains=@NoSpell
syntax match mkdRefDefTarget /\(]:\s*\)\@<=.*/ contained containedin=mkdRefDef contains=@NoSpell
syntax match mkdRefDefStart /^\[/ conceal contained containedin=mkdRefDef
syntax match mkdRefDefDelim /]:\@=/ conceal contained containedin=mkdRefDef

" The ability to do this is awesome :-)
syntax match mkdLessThan /&lt;/ conceal cchar=<
syntax match mkdGreaterThan /&gt;/ conceal cchar=>
syntax match mkdAmpersand /&amp;/ conceal cchar=&
syntax match mkdBullet /\(^\s*\)\@<=[-*+]/ conceal cchar=Ã¢â¬Â¢
highlight link mkdBullet Comment

" Default highlighting styles.
highlight link mkdBold htmlBold
highlight link mkdCode String
highlight link mkdCodeBlock String
highlight link mkdHeading Title
highlight link mkdHeadingMarker Comment
highlight link mkdInlineLinkLabel Underlined
highlight link mkdInlineLinkTarget String
highlight link mkdItalic htmlItalic
highlight link mkdLiteralLink Underlined
highlight link mkdMarker Comment
highlight link mkdRefDefName String
highlight link mkdRefDefTarget Underlined
highlight link mkdRefLinkLabel Underlined
highlight link mkdRefLinkName String

" I know this is a hack but I *really* don't like the default highlighting of
" concealed text, which isn't gui=standout but it sure does stand out!
highlight Conceal guifg=fg guibg=bg
