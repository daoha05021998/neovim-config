"let g:ctrlp_user_command = ['.git/', git '--git-dir=%s/.git ls-files -oc --exclude-standard'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\node_modules\\*

"] j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
set smarttab
