set nocompatible
set backspace=indent,eol,start

" tab settings
set autoindent
set expandtab
set tabstop=4
set shiftwidth=0

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'fatih/vim-go'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()

filetype plugin indent on 
