" Leader
let mapleader = " "
"set title
"set titlestring=%F\ %a%r%m
filetype plugin indent on
"syntax on
syntax enable

set encoding=utf-8
scriptencoding utf-8
set mouse=a
"set backspace=2   " Backspace deletes like most programs in insert mode
set backspace=indent,eol,start
set nobackup
set nowritebackup
set noswapfile
set history=200
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set linebreak

set autoindent
set smartindent

set autoread
set autowrite


" Softtabs, 2 spaces
set tabstop=4
set softtabstop=4 "2
set shiftwidth=2
set shiftround
set expandtab

set foldmethod=indent
set nofoldenable
set foldlevel=99
set hlsearch
set ignorecase "

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·
"set list lcs=trail:·
" Use one space, not two, after punctuation.
set nojoinspaces

" Numbers
set number

"custom cursor
" Enable CursorLine
set cursorline
set numberwidth=2

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Autocomplete with dictionary words when spell check is on
"set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Copy to clipboard
set clipboard=unnamed

set whichwrap+=>,l
set whichwrap+=<,h
set whichwrap+=[,]

set lazyredraw
