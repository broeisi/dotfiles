
" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai2"

"if exists("g:molokai_original")
"    let s:molokai_original = g:molokai_original
"else
"    let s:molokai_original = 0
"endif

hi Normal   guifg=#F8F8F2   guibg=#1B1D1E

hi Constant    guifg=#AE81FF
hi Boolean     guifg=#AE81FF
hi Operator    guifg=#F92672
hi Keywords    guifg=#AE81FF
hi Function    guifg=#A6E22E 
hi Identifier  guifg=#AE81FF
