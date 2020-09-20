set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-markdown'
Plugin 'ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'sdiehl/haskell-vim-proto'
Plugin 'stephpy/vim-yaml'

call vundle#end()

filetype plugin indent on
"pathogen package manager
"execute pathogen#infect()

"Turn on syntax hightlighting
syntax on
colorscheme desert

"Turn on linenumbers
set relativenumber
set nu

"Turn tabs into spaces & set number of spaces
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
"Increase vim history
set history=1000

"change file explorer style
let g:netrw_liststyle=3

"Show line & column number in bottom right corner
set ruler
set laststatus=2
set viminfo='100,<300,s10,h
set hlsearch

"Map jj to avoid hitting exit to escape
:imap jj <Esc>

"Map jk to save
:imap jk <Esc>:w<CR>

"turn linenumbers gray
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
