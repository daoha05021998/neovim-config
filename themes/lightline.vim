set laststatus=2

if !has('gui_running')
  set t_Co=256
endif
set noshowmode
let g:coc_status_error_sign = '❌'
let g:coc_status_warning_sign = ' '

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'gitbranch', 'readonly', 'filename', 'modified'], ['tagbar'] ],
      \   'right': [ [ 'lineinfo', 'percent' ],
      \              [ 'fileformat', 'fileencoding' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component_function': {
	  \   'cocstatus': 'coc#status',
      \   'gitbranch': 'fugitive#head',
	  \    'tagbar' : 'LightLineTagbar',
	  \   'filetype': 'MyFiletype',
	  \   'filename': 'LightLineFname',
      \   'fileformat': 'MyFileformat',
	  \   'readonly': 'LightLineReadonly',
	  \   'mode': 'LightLineMode'
      \ },
	  \ 'component': {
	  \   'lineinfo': ' %2l:%-2v%<',
	  \   'percent': '☰ %3p%%',
	  \ },
      \ }
	  
	    
"coc#status
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
let g:lightline.separator = {
	  \  'left': '', 'right': ''
      \}
let g:lightline.subseparator = {
	  \   'left': '', 'right': '' 
      \}


set showtabline=2

let g:lightline.enable = {
		    \ 'statusline': 1,
		    \ 'tabline': 1
		    \ }
			
hi Quote ctermbg=red guifg=#83a598
"devicons
function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : &filetype) : ''
  endfunction
  
  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction
  
  
"Tag bar
function! LightLineTagbar() abort
  let s = tagbar#currenttag("%s", "","f")
  return s
endfunction

"readonly
function! LightLineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightLineFname() 
  let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : '').' '
  let filename = LightLineFilename()
  if filename == ''
      return '[No Name]'
  endif
  if filename =~# 'NERD_tree'
      return '[Explorer]'
  endif
  if filename =~# '__Tagbar__'
      return '[Outline]'
  endif
  return join([filename, icon],'')
endfunction
function! LightLineFilename()
  return ('' != expand('%:t') ? expand('%:t') : '')
endfunction

	function! LightLineMode()
	  let fname = expand('%:t')
	  return fname =~# '^__Tagbar__' ? 'Tagbar' :
	        \ fname ==# 'ControlP' ? 'CtrlP' :
	        \ fname =~# 'NERD_tree' ? 'NERDTree' :
	        \ winwidth(0) > 60 ? lightline#mode() : ''
	endfunction
	
"tab
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
