set number
set smartindent
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set expandtab
set splitright
set clipboard=unnamed
set hls
set background=dark

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.config/nvim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
  Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
call plug#end()
set helplang=ja,en

inoremap <silent> jj <ESC>

syntax enable
colorscheme iceberg
