set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"NERDtree!!
Plugin 'scrooloose/nerdtree'
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" Ctrl P
Plugin 'kien/ctrlp.vim'

" PHP Docblocks
Plugin 'tobyS/pdv'

"vim mustache -- templating for VimScripts
Plugin 'tobyS/vmustache'

"ultiSnips -- You know what it's for
Plugin 'SirVer/ultisnips'

"easymotion -- You know what it's for!
Plugin 'Lokaltog/vim-easymotion'

"Emmet -- quick HTML
Plugin 'mattn/emmet-vim'

"Powerline -- Powerline is a statusline plugin for vim
"Plugin 'powerline/powerline'

"Airline -- Airline is also a statusline plugin for vim
Plugin 'bling/vim-airline'

"Indent Guides -- This creates line guides for indentation.
Plugin 'nathanaelkane/vim-indent-guides'

"GitGutter -- This lets me see git changes.
Plugin 'airblade/vim-gitgutter'

" dbtext -- a database accessor
" Plugin 'vim-scripts/dbext.vim'

" vdbi - Database client
Plugin 'mattn/vdbi-vim'

" Web API plugin, needed for VDBI
Plugin 'mattn/webapi-vim'

" Vim Scripts.
Plugin 'vim-scripts/PHP-correct-Indenting'

" Vim Multiple Cursors.
Plugin 'terryma/vim-multiple-cursors'

" Preview CSS colors.
Plugin 'ap/vim-css-color'

" Blade syntax highlighting
Plugin 'xsbeats/vim-blade'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" OmniSharp
Plugin 'OmniSharp/omnisharp-vim'

" Vim Dispatch
 Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
colorscheme solarized
set background=dark

let mapleader = ","

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>pdoc :call pdv#DocumentWithSnip()<CR>

" Show syntax highlighting groups for word under cursor
nmap <Leader>co :call <SID>SynStack()<CR>
function! <SID>SynStack()
if !exists("*synstack")
return
endif
echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

set undodir=C:\Users\bknox\.vim\.undo\
set backupdir=C:\Users\bknox\.vim\.backups\

set encoding=utf-8
set guifont=Consolas:h11:cANSI

let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8
set noshowmode

set number
set relativenumber

set nobackup
set noswapfile

let g:indent_guides_autocmds_enabled = 1

let g:gitgutter_highlight_lines=1
let g:gitgutter_max_signs=1000000
let g:indent_guides_autocmds_enabled = 1

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set softtabstop=2

set lsp=15

set visualbell

set mouse=a

set ignorecase
set smartcase

set hlsearch

highlight Search cterm=underline

nmap <Leader>dt :NERDTree<CR>
nmap <Leader>d :NERDTreeToggle<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nmap <Leader><C-h> <C-w>H
nmap <Leader><C-j> <C-w>J
nmap <Leader><C-k> <C-w>K
nmap <Leader><C-l> <C-w>L

"nmap <C-V> :vertical resize +5<CR>
nmap <C-x> :vertical resize -5<CR>

nnoremap j gj
nnoremap k gk

nnoremap <Leader><C-v> <C-v>

nmap <Leader>s :source C:\Program Files (x86)\Vim\_vimrc<CR>
nmap <Leader>v :e C:\Program Files (x86)\Vim\_vimrc<CR>

nmap <Leader><Space> :nohlsearch<CR>

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" " These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" " Without these mappings, `n` & `N` works fine. (These mappings just provide
" " different highlight method and have some other features )
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**

" Saves the state of the folds.
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" au BufWinLeave ?* mkview 1
" au BufWinEnter ?* silent loadview 1

"folding settings
set foldmethod=manual "fold based on indent
set foldnestmax=10 "deepest fold is 10 levels
set nofoldenable "dont fold by default
set foldlevel=1 "this is just what i use

" autocmd BufEnter,BufNew *.blade.php set filetype=blade

cd C:\Users\bknox\Documents\projects\
