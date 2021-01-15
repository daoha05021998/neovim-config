let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin='C:\Tools\Ctags\ctags.exe'
let g:tagbar_scopestrs = {
	\    'class': "\uf0e8",
	\    'constants': "\uf8ff",
	\    'const': "\uf8ff",
	\    'consts': "\uf8ff",
	\    'constant': "\uf8ff",
	\    'enum': "\uf702",
	\    'field': "\uf30b",
	\    'functions': "\uf794",
	\    'func': "\uf794",
	\    'function': "\uf794",
	\    'getter': "\ufab6",
	\    'implementation': "\uf776",
	\    'interface': "\uf7fe",
	\    'map': "\ufb44",
	\    'member': "\uf02b",
	\    'method': "\uf6a6",
	\    'setter': "\uf7a9",
	\    'variable': "\uf71b",
	\ }
let g:tagbar_iconchars = ['▶', '▼'] 
let g:tagbar_width=25


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