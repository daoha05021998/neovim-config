hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

"syntax on
"colorscheme onedark

"hi Error guibg=Red guifg=White ctermfg=White ctermbg=Red
"hi ErrorMsg ctermfg=Blue guifg=Blue
" checks if your terminal has 24-bit color support

"hi Normal ctermfg=145 ctermbg=235 guifg=#abb2bf  guibg=#282c34


if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

"custom Coc

hi CocUnderline gui=undercurl term=undercurl
hi CocErrorHighlight ctermfg=red  guifg=#c4384b gui=undercurl term=undercurl
hi CocWarningHighlight ctermfg=yellow guifg=yellow gui=underline term=underline
hi CocInfoHighlight gui=underline term=underline
