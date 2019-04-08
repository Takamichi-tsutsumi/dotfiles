noremap <Space> <Nop>
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
tnoremap <silent> <ESC> <C-\><C-n>

syntax on
if !has('gui_running')
  set t_Co=256
endif

set encoding=utf-8
set fileencoding=utf-8

set number
set title
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
autocmd FileType make setlocal noexpandtab

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
set laststatus=2

set cursorline
hi clear CursorLine
set noshowmode
let &t_SI = "\e]50;CursorShape=1\x7"
let &t_EI = "\e]50;CursorShape=0\x7"

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

call plug#begin('~/.vim/plugins')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'modified', 'readonly' ], [ 'ale' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'gitbranch', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \  }
      \ }

nnoremap <C-n> :Vexplore<CR>
