noremap <Space> <Nop>
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = 'complete'
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
tnoremap <silent> <ESC> <C-\><C-n>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

augroup MyAutoCmd
  autocm!
augroup END

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

let &runtimepath = s:dein_repo_dir .",".&runtimepath
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Load plugins and cache
  let g:rc_dir    = expand('~/.config/nvim')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

filetype plugin indent on
filetype plugin on
syntax enable

"End dein Scripts-------------------------

" My NeoVim configuration.
syntax on
colors dracula

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

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
let $NVIM_TUI_ENABLE_CURSOR_COLOR = 1
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
if exists('$TMUX')
  let &t_SI = "Ptmux;]50;CursorShape=1\x7"
  let &t_EI = "Ptmux;]50;CursorShape=0\x7"
else
  let &t_SI = "]50;CursorShape=1\x7"
  let &t_EI = "]50;CursorShape=0\x7"
endif


autocmd BufWritePre * :%s/\s\+$//ge

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" NERD shortcut
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap sp gT

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=

let g:python3_host_prog = '/Users/uu107017/.pyenv/versions/anaconda3-4.2.0/bin/python'

" Rust setting
let g:rustfmt_autosave = 1
let g:rustfmt_command = '/Users/uu107017/.cargo/bin/rustfmt'

let g:racer_cmd = '/Users/uu107017/.cargo/bin/racer'
let g:racer_experimental_completer = 1

let g:deoplete#sources#rust#racer_binary='/Users/uu107017/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/uu107017/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#disable_keymap=1
let g:deoplete#sources#rust#documentation_max_height=12

" JavaScript Setting
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#filetypes = [
      \'jsx'
      \]
autocmd CompleteDone * pclose

let g:jsx_ext_required = 0

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename', 'modified' ], [ 'readonly' ], [ 'buflist' ] ]
      \ },
      \ }

" NERDCommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhiteSpace = 1

" window resizing submode
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

