let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin='C:\Tools\Ctags\ctags.exe'
let g:tagbar_iconchars = ['▶', '▼'] 
let g:tagbar_width=30

function! TagbarStatusFunc(current, sort, fname, flags, ...) abort
    let colour = a:current ? '%#StatusLine#' : '%#StatusLineNC#'
    et flagstr = join(flags, '')
    if flagstr != ''
        let flagstr = '[' . flagstr . '] '
    endif
    return colour . '[' . sort . '] ' . flagstr . fname
endfunction
"let g:tagbar_status_func = 'TagbarStatusFunc'

nmap <F8> :TagbarToggle<CR>