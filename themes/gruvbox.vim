syntax on
colorscheme gruvbox
set background=dark
"set background=light

if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

"custom Coc

"hi CocUnderline gui=undercurl term=undercurl
"hi CocErrorHighlight ctermfg=red  guifg=#c4384b gui=undercurl term=undercurl
"hi CocWarningHighlight ctermfg=yellow guifg=yellow gui=underline term=underline
"hi CocInfoHighlight gui=underline term=underline