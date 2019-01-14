noremap <Space> <Nop>
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
tnoremap <silent> <ESC> <C-\><C-n>

syntax on
colors peachpuff

set encoding=utf-8
set fileencoding=utf-8

set number
set title
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set noswapfile
set nobackup
set autoread
set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch
set hlsearch

set ai
set showmatch
set ambiwidth=double
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set scrolloff=3
set ambiwidth=double

set mouse=a

set updatetime=250

set cursorline
hi clear CursorLine
set noshowmode

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=

