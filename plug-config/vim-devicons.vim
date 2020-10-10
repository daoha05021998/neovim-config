set encoding=utf8
" loading the plugin
"let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_enable = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

" adding the custom source to unite
"let g:webdevicons_enable_unite = 1

" adding the column to vimfiler
"let g:webdevicons_enable_vimfiler = 1

" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1

" adding to vim-startify screen
let g:webdevicons_enable_startify = 1

" adding to flagship's statusline
"let g:webdevicons_enable_flagship_statusline = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags
"let g:webdevicons_conceal_nerdtree_brackets = 1

" Force extra padding in NERDTree so that the filetype icons line up vertically

  
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['scss'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = 'ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ﯤ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['py'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ejs'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vue'] = '﵂'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rs'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['env'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rar'] = ''

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['node_modules'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['favicon.ico'] = ''

"let g:WebDevIconsNerdTreeAfterGlyphPadding =" "
"let g:DevIconsEnableFolderPatternMatching = 1
"let g:DevIconsEnableFolderExtensionPatternMatching = 1
"let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:webdevicons_gui_glyph_fix = 1
