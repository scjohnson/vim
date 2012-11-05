""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stellar specifics
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=/home/sj/Stellar/Controlled/trunk/tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=1000 " How many lines of history to remember
set cf " enable error files and error jumping
"set clipboard+=unnamed " turns out I do like is sharing windows clipboard
set ffs=unix,mac,dos " support all three, in this order
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
syntax on " syntax highlighting on
" Enable Syntax Colors
" --------------------
syntax on
if has("gui_running")
  colorscheme zenburn
  " Maximize gvim window.
  " set lines=999 columns=999
  
 " set guifont=Monaco:h12
else
  "colorscheme zenburn
  colorscheme default
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn " See Help (complex)
set ai " autoindent
set si " smartindent 
set cindent " do c-style indenting
filetype plugin indent on
set tabstop=2 " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2 " unify 
set expandtab " tabs to space
set cinoptions=(2
" set smarttab " use tabs at the start of a line, spaces elsewhere

" Makefile Specifics
au FileType make setlocal noexpandtab

" Use incremental, highlighted search that is case insensitive unless the "
" search term contains upper case letters.

set hlsearch
set incsearch
set ignorecase
set smartcase
"

" Minibuffer
" ----------
"  one click is enough and fix some funny bugs
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapCTabSwitchBufs = 1

" Turn on line numbers:
set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
set backspace=indent,eol,start

call pathogen#infect("~/.vim/bundle")
Helptags
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/ultisnips/UltiSnips/"
