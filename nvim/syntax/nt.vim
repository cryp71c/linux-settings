" Define syntax highlighting for my custom language

if exists("b:current_syntax")
  finish
endif

" Comments: Match #, --, and // anywhere in the line
syntax match mylangComment "\v(#|//).*"
highlight mylangComment guifg=#8A8E94 ctermfg=243 gui=italic

" Code blocks: ``` (triple backticks)
syntax region mylangCodeBlock start="^\s*```" end="^\s*```" keepend
highlight mylangCodeBlock guifg=#A6ACD9 ctermfg=5 gui=bold,italic

" Keywords (example: 'TODO', 'FIXME', 'NOTE')
syntax match mylangKeyword "\v<(TODO|FIXME|NOTE)>"
highlight mylangKeyword guifg=#FF5370 ctermfg=204 gui=bold,underline

" Strings (inside double quotes)
syntax match mylangString /"[^"]*"/
highlight mylangString guifg=#C3E88D ctermfg=114 gui=italic

" Function names (example: 'myFunction()')
syntax match mylangFunction /\v\w+\ze\(/
highlight mylangFunction guifg=#82AAFF ctermfg=75 gui=bold

" Numbers (standalone)
syntax match mylangNumber /\v<\d+>/
highlight mylangNumber guifg=#F78C6C ctermfg=173 gui=bold

let b:current_syntax = "mylang"

