" vim:tabstop=2:shiftwidth=2:expandtab:textwidth=99
" Vimwiki syntax file
" Description: Defines default syntax
" Home: https://github.com/vimwiki/vimwiki/


" s:default_syntax is kind of a reference to the dict in
" g:vimwiki_syntax_variables['default']. It is used here simply as an
" abbreviation for the latter.
let s:default_syntax = g:vimwiki_syntax_variables['default']


" TODO mutualise
" Get config: possibly concealed chars
let b:vimwiki_syntax_conceal = exists('+conceallevel') ? ' conceal' : ''
let b:vimwiki_syntax_concealends = has('conceal') ? ' concealends' : ''

" text: *strong*
let s:default_syntax.dTypeface.bold = vimwiki#u#hi_expand_regex([
      \ ['\*', '\*']])

" text: _italic_
let s:default_syntax.dTypeface.italic = vimwiki#u#hi_expand_regex([
      \ ['_', '_']])

" text: no underline defined
let s:default_syntax.dTypeface.underline = []

" text: *_bold italic_* or _*italic bold*_
let s:default_syntax.dTypeface.bold_italic = vimwiki#u#hi_expand_regex([
      \ ['\*_', '_\*'], ['_\*', '\*_']])

" generic headers
let s:default_syntax.rxH = '='
let s:default_syntax.symH = 1



" <hr>, horizontal rule
let s:default_syntax.rxHR = '^-----*$'

" Tables. Each line starts and ends with '|'; each cell is separated by '|'
let s:default_syntax.rxTableSep = '|'

" Lists
let s:default_syntax.bullet_types = ['-', '*', '#']
" 1 means the bullets can be repeatet to indicate the level, like * ** ***
" 0 means the bullets stand on their own and the level is indicated by the indentation
let s:default_syntax.recurring_bullets = 0
let s:default_syntax.number_types = ['1)', '1.', 'i)', 'I)', 'a)', 'A)']
"this should contain at least one element
"it is used for i_<C-L><C-J> among other things
let s:default_syntax.list_markers = ['-', '1.', '*', 'I)', 'a)']
let s:default_syntax.rxListDefine = '::\(\s\|$\)'

" Preformatted text
let s:default_syntax.rxPreStart = '{{{'
let s:default_syntax.rxPreEnd = '}}}'

" Math block
let s:default_syntax.rxMathStart = '{{\$'
let s:default_syntax.rxMathEnd = '}}\$'

let s:default_syntax.rxMultilineCommentStart = '%%+'
let s:default_syntax.rxMultilineCommentEnd = '+%%'
let s:default_syntax.rxComment = '^\s*%%.*$'

let s:default_syntax.header_search = '^\s*\(=\{1,6}\)\([^=].*[^=]\)\1\s*$'
let s:default_syntax.header_match = '^\s*\(=\{1,6}\)=\@!\s*__Header__\s*\1=\@!\s*$'
let s:default_syntax.bold_search = '\%(^\|\s\|[[:punct:]]\)\@<=\*\zs\%([^*`[:space:]][^*`]*'.
      \ '[^*`[:space:]]\|[^*`[:space:]]\)\ze\*\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.bold_match = '\%(^\|\s\|[[:punct:]]\)\@<=\*__Text__\*'.
      \ '\%([[:punct:]]\|\s\|$\)\@='
let s:default_syntax.wikilink = '\[\[\zs[^\\\]|]\+\ze\%(|[^\\\]]\+\)\?\]\]'
