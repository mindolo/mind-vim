"Load pathogen and then all the other plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""
" We're in 2012, no more vi.
set nocompatible

set history=100
set autoread

" Leader is ,
let mapleader = ","

" Autoreload vimrc when edited
autocmd! bufwritepost vimrc source ~/.vimrc

" Turn on wildmenu
set wildmenu

" Ruler
set ruler

" Shared undo history
set hid

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search

set ignorecase
set smartcase

set hlsearch

set incsearch



" Syntax highlighting
syntax on

" The following will make Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

"""""""""""""""""""""""""""""
" Indentation

"""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines



" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned


" NERDTree related
" Vim will exit if the latest windows is just a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NERDTree will open if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif

set background=dark
set t_Co=256 " 256 colors
color solarized
