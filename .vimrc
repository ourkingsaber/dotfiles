
" .vimrc
" ==================================

" Colors
syntax enable			" enable syntax processing
syntax on
set background=dark
colorscheme monokai   " add color scheme

" Space & Tabs
set tabstop=4			" 4 space tab
set softtabstop=0		" number of spaces in tab when editing
set expandtab			" tabs are spaces
set shiftwidth=4
set smarttab
set modeline
filetype indent on
filetype plugin on
set autoindent
set backspace=indent,eol,start

" UI Layout
set number              " show line numbers
set showcmd             " show command in bottem bar
set relativenumber
set laststatus=2
set cursorline
set nowrap
set ruler
set showmatch           " highlight matching parenthesis
set wildmenu            " auto complete menu

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case when searching
set smartcase

" Other
let mapleader = ";"
let g:mapleader = ";"
map <F8> :!g++ -std=c++11 % && ./a.out <CR>
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set pastetoggle=<F2>        " toggle paste

" NERD Tree
autocmd vimenter * wincmd p
map <C-t> :NERDTreeToggle<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-=>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-->', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-=>'
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_ycm_extra_conf.py'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsSnippetsDir = "~/dotfiles/snips"

" set airline theme
let g:airline_theme = 'base16_monokai'
let g:airline_powerline_fonts = 1

" set tagbar
nmap <F6> :TagbarToggle<CR>




set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins-------------------------------------
Plugin 'VundleVim/Vundle.vim'

Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'craigemery/vim-autotag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/gitv'
Plugin 'honza/vim-snippets'
Plugin 'kshenoy/vim-signature'
Plugin 'lifepillar/vim-cheat40'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FA
