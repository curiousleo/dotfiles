set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

set autowrite
set wildmenu

set undolevels=1000

if !isdirectory($HOME . "/.vim/undo")
  call mkdir($HOME . "/.vim/undo", "p", 0700)
endif

set undodir=~/.vim/undo
set undofile
