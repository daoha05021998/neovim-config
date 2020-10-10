autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:NERDTreeMouseMode=2
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$','^.git$']
let g:NERDTreeStatusline=1
let NERDTreeAutoDeleteBuffer=1
"let g:NERDTreeMinimalUI = 1
"autocmd FileType nerdtree setlocal nolist
autocmd FileType nerdtree setlocal signcolumn=no

"noremap <F3> :call BD() <CR>

function! BD()
	let length = len(getbufinfo({'buflisted':1}))
		if length > 1
			bd#
			echo 'closed tab'
		else
			echo 'buffer die'
		endif
endfunction