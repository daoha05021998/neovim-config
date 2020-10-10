call NERDTreeAddKeyMap({
	\ 'key': '<2-LeftMouse>',
	\ 'callback': 'NERDTreeMyOpenInTab',
	\ 'quickhelpText': 'echo full path of current node',
	\ 'override': 1,
	\ 'scope': 'FileNode' })

function! NERDTreeMyOpenInTab(node)
    call a:node.open({'reuse': "all", 'where': 't'})
endfunction