set mouse=a
set clipboard=unnamed
syntax enable
set noexpandtab
set tabstop=4 shiftwidth=4

:set termguicolors

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'

let g:airline_theme = 'nana'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

call plug#end()
