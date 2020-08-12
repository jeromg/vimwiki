" vim:tabstop=2:shiftwidth=2:expandtab:textwidth=99
" Vimwiki syntax file
" Description: Defines mediaWiki syntax
" Home: https://github.com/vimwiki/vimwiki/


" see the comments in vimwiki_default.vim for some info about this file


let s:media_syntax = g:vimwiki_syntax_variables['media']

" text: '''strong'''
let s:media_syntax.dTypeface['bold'] = [
      \ ['\S\@<=''''''\|''''''\S\@=', '\S\@<=''''''\|''''''\S\@='],
      \ ]

" text: ''italic''
let s:media_syntax.dTypeface['italic'] = [
      \ ['\S\@<=''''\|''''\S\@=', '\S\@<=''''\|''''\S\@='],
      \ ]

" text: no underline defined
let s:media_syntax.dTypeface['underline'] = []

" text: '''''strong italic'''''
let s:media_syntax.dTypeface['bold_italic'] = [
      \ ['\S\@<=''''''''''\|''''''''''\S\@=', '\S\@<=''''''''''\|''''''''''\S\@='],
      \ ]


" generic headers
let s:media_syntax.rxH = '='
let s:media_syntax.symH = 1


" <hr>, horizontal rule
let s:media_syntax.rxHR = '^-----*$'

" Tables. Each line starts and ends with '|'; each cell is separated by '|'
let s:media_syntax.rxTableSep = '|'

" Lists
let s:media_syntax.bullet_types = ['*', '#']
let s:media_syntax.recurring_bullets = 1
let s:media_syntax.number_types = []
let s:media_syntax.list_markers = ['*', '#']
let s:media_syntax.rxListDefine = '^\%(;\|:\)\s'

" Preformatted text
let s:media_syntax.rxPreStart = '<pre>'
let s:media_syntax.rxPreEnd = '<\/pre>'

" Math block
let s:media_syntax.rxMathStart = '{{\$'
let s:media_syntax.rxMathEnd = '}}\$'

" NOTE: There is no multi-line comment syntax for MediaWiki
let s:media_syntax.rxMultilineCommentStart = ''
let s:media_syntax.rxMultilineCommentEnd = ''
let s:media_syntax.rxComment = '^\s*%%.*$'

let s:media_syntax.header_search = '^\s*\(=\{1,6}\)\([^=].*[^=]\)\1\s*$'
let s:media_syntax.header_match = '^\s*\(=\{1,6}\)=\@!\s*__Header__\s*\1=\@!\s*$'
let s:media_syntax.bold_search = "'''\\zs[^']\\+\\ze'''"
let s:media_syntax.bold_match = '''''''__Text__'''''''
" ^- this strange looking thing is equivalent to "'''__Text__'''" but since we later
" want to call escape() on this string, we must keep it in single quotes
let s:media_syntax.wikilink = '\[\[\zs[^\\\]|]\+\ze\%(|[^\\\]]\+\)\?\]\]'
