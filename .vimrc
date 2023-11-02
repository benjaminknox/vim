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
if !exists("g:ycm_semantic_triggers")
let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

call plug#begin('~/.vim/plugged')
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree'
Plug 'omnisharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'puremourning/vimspector'
Plug 'dense-analysis/ale'
Plug 'yggdroot/indentline'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'adamclerk/vim-razor'
" Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mnishz/colorscheme-preview.vim'
Plug 'sickill/vim-monokai'
Plug 'jwalton512/vim-blade'
call plug#end()

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 5
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

hi ALEError ctermfg=black ctermbg=lightred

colorscheme monokai

nnoremap <leader>s :NERDTreeToggle<enter> :split<enter> :NERDTreeToggle<enter>
nnoremap <leader>v :NERDTreeToggle<enter> :vsplit<enter> :NERDTreeToggle<enter>
nnoremap <leader>o :NERDTreeToggle<enter> :NERDTreeToggle<enter>
