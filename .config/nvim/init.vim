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
set helplang=ja,en

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.config/nvim/plugged')
  Plug 'vim-jp/vimdoc-ja'
  Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
  Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
  Plug 'machakann/vim-sandwich'
  Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" easymotion mapping
map <Leader> <Plug>(easymotion-prefix)
nmap s <Plug>(easymotion-overwin-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:sandwich#recipes = deepcopy(g:sandwich#default_recipes)

inoremap <silent> jj <ESC>

syntax enable
colorscheme dracula

" key maps for cursor moving
nnoremap <C-h> <Left>
vnoremap <C-h> <Left>
inoremap <C-h> <Left>
nnoremap <C-j> <Down>
vnoremap <C-j> <Down>
inoremap <C-j> <Down>
nnoremap <C-l> <Right>
vnoremap <C-l> <Right>
inoremap <C-l> <Right>
nnoremap <C-k> <Up>
vnoremap <C-k> <Up>
inoremap <C-k> <Up>
