set number
set smartindent
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set expandtab
set splitright
set clipboard=unnamed
set hls

call plug#begin('~/.config/nvim/plugged')
  Plug 'vim-jp/vimdoc-ja'
call plug#end()
set helplang=ja,en

inoremap <silent> jj <ESC>
