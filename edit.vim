//tab.vim
function! lightline#tab#filename(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let icon = (strlen(&filetype) ? ' ' . WebDevIconsGetFileTypeSymbol() : ' ?').' '
  let number = buflist[winnr - 1]
  let _ = expand('#'.number.':t')
  return _ !=# '' ? _.icon : '[No Name]'
endfunction
//nerdtree_plugin/mymapping.vim
call NERDTreeAddKeyMap({
	\ 'key': '<2-LeftMouse>',
	\ 'callback': 'NERDTreeMyOpenInTab',
	\ 'quickhelpText': 'echo full path of current node',
	\ 'override': 1,
	\ 'scope': 'FileNode' })

function! NERDTreeMyOpenInTab(node)
    call a:node.open({'reuse': "all", 'where': 't'})
endfunction