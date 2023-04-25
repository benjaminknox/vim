syntax on
set number
:let mapleader = ","
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" Auto install vim-plug: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'puremourning/vimspector'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'adamclerk/vim-razor'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
call plug#end()

if !exists("g:ycm_semantic_triggers")
let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 5
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

hi ALEError ctermfg=black ctermbg=lightred

nnoremap <leader>s :NERDTreeToggle<enter> :split<enter> :NERDTreeToggle<enter>
nnoremap <leader>v :NERDTreeToggle<enter> :vsplit<enter> :NERDTreeToggle<enter>
nnoremap <leader>o :NERDTreeToggle<enter> :NERDTreeToggle<enter>
