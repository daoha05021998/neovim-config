let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_arrow_function = "⇒"

set conceallevel=1
augroup filetypedetect
	au! BufRead,BufNewFile *.json setfiletype json
	set conceallevel=0
augroup END
