"Specify a directory for plugins
source ~/AppData/Local/nvim/base.vim
"let g:polyglot_disabled = ['jsx', 'js', 'ts', 'tsx','html']

call plug#begin('~/.vim/plugged')
"themes
Plug 'joshdick/onedark.vim'
"Plug 'morhetz/gruvbox'
"Plug 'mhartington/oceanic-next'

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'" JS and JSX syntax
Plug 'leafgarland/typescript-vim'" TypeScript syntax
Plug 'jparise/vim-graphql'
Plug 'honza/vim-snippets'

"Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
"Plug 'Yggdroot/indentLine'
Plug 'preservim/tagbar'
"Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'voldikss/vim-floaterm'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'itchyny/vim-cursorword'

"Plug 'koron/minimap-vim'
call plug#end()

source ~/AppData/Local/nvim/themes/onedark.vim
syntax on
colorscheme onedark
"source ~/AppData/Local/nvim/themes/gruvbox.vim
"source ~/AppData/Local/nvim/themes/oceanic-next.vim
source ~/AppData/Local/nvim/themes/lightline.vim

source ~/AppData/Local/nvim/plug-config/gitgutter.vim
source ~/AppData/Local/nvim/plug-config/nerdtree.vim
source ~/AppData/Local/nvim/plug-config/vim-nerdtree-tabs.vim
source ~/AppData/Local/nvim/plug-config/vim-devicons.vim
source ~/AppData/Local/nvim/plug-config/coc.vim
source ~/AppData/Local/nvim/plug-config/vim-nerdtree-syntax-highlight.vim
source ~/AppData/Local/nvim/plug-config/vim-javascript.vim
source ~/AppData/Local/nvim/plug-config/ctrlp.vim
"source ~/AppData/Local/nvim/plug-config/vim-polyglot.vim
source ~/AppData/Local/nvim/plug-config/vim-startify.vim
"source ~/AppData/Local/nvim/plug-config/indentLine.vim
source ~/AppData/Local/nvim/plug-config/tagbar.vim
"source ~/AppData/Local/nvim/plug-config/nerdtree-git-plugin.vim
source ~/AppData/Local/nvim/plug-config/comment-code.vim
source ~/AppData/Local/nvim/plug-config/vim-floaterm.vim
source ~/AppData/Local/nvim/plug-config/rainbow.vim
"source ~/AppData/Local/nvim/plug-config/vim-indent-guides.vim

set termencoding=utf8
"imap <C-Return> <CR><CR><C-o>k<Tab>
inoremap <expr> <CR> InsertMapForEnter()
function! InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction
