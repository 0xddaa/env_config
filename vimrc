set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" autocomplete
Plugin 'valloric/youcompleteme'
" directory
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set guifontset=8x16,kc15f,-*-16-*-big5-0
set backspace=2
set cindent
set hls
set background=dark
set nomodeline
set nu
set paste
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

syntax on
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7


" file encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<M-;>'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1              " complete in comment
let g:ycm_min_num_of_chars_for_completion = 2   " toogle after 2 char
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_complete_in_strings = 1               " toogle in string (double quote)
let g:ycm_autoclose_preview_window_after_completion = 1
