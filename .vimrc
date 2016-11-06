" ==================================
" .vimrc
" ==================================

set nocompatible              " be iMproved, required

" --- Plugins--- {{{
call plug#begin('~/.vim/plugged')

" UI
Plug 'bling/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'

" File
Plug 'ctrlpvim/ctrlp.vim'                           " file explorer
Plug 'lifepillar/vim-cheat40'
Plug 'scrooloose/nerdtree'                          " tree file explorer

" Edit
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'

" Tags
Plug 'majutsushi/tagbar'                            " tag bar on right
Plug 'craigemery/vim-autotag'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" IDE
Plug 'ervandew/supertab'                            " setup tab for ycm
Plug 'kshenoy/vim-signature'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer'}
Plug 'rdnetto/YCM-Generator'
Plug 'Chiel92/vim-autoformat'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" C++
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
" }}}

" --- vim Settings --- {{{
" Colors
syntax enable                   " enable syntax processing
syntax on
set background=dark
colorscheme monokai             " add color scheme

" Space & Tabs
set tabstop=4                   " 4 space tab
set softtabstop=0               " number of spaces in tab when editing
set expandtab                   " tabs are spaces
set shiftwidth=4
set smarttab
set modeline
filetype indent on
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
" Set cursor
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case when searching
set smartcase

" Folding
set foldmethod=syntax
set nofoldenable
set foldnestmax=10
set foldlevel=1

" Mapping
let mapleader = ";"
let g:mapleader = ";"
map <F8> :!g++ -std=c++11 % && ./a.out <CR>
map <F9> :!python3 % <CR>
autocmd BufWritePost $MYVIMRC source $MYVIMRC   " 让配置变更立即生效
set pastetoggle=<F2>        " toggle paste

" }}}


" --- Plugin Setting/Mapping --- {{{
" NERD Tree
autocmd vimenter * wincmd p
map <C-t> :NERDTreeToggle<CR>

" gundo
nnoremap <F5> :GundoToggle<CR>

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

" set nerdcommentor space
let NERDSpaceDelims=1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

" set tagbar
nmap <C-g> :TagbarToggle<CR>

" }}}

