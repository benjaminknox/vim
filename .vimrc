syntax on
set number
:let mapleader = ","
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set cindent

if !exists("g:ycm_semantic_triggers")
let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

call plug#begin('~/.vim/plugged')
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'preservim/nerdtree'
Plug 'omnisharp/omnisharp-vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yggdroot/indentline'
Plug 'peitalin/vim-jsx-typescript'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'adamclerk/vim-razor'
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

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

colorscheme monokai

nnoremap <leader>s :NERDTreeToggle<enter> :split<enter> :NERDTreeToggle<enter>
nnoremap <leader>v :NERDTreeToggle<enter> :vsplit<enter> :NERDTreeToggle<enter>
nnoremap <leader>o :NERDTreeToggle<enter> :NERDTreeToggle<enter>
