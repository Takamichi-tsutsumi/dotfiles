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

"let &t_SI = "\e]50;CursorShape=1\x7"
"let &t_EI = "\e]50;CursorShape=0\x7"

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif


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

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'arcticicestudio/nord-vim'
call plug#end()

" disable Auto pair center line when enter
let g:AutoPairsCenterLine = 0

" Setting colors
colorscheme nord
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_status_lines = 1
let g:nord_cursor_line_number_background = 1
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'modified', 'readonly' ], [ 'ale' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'gitbranch', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \  }
      \ }

let g:NERDTreeShowBookmarks=1
