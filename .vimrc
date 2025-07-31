call plug#begin()


Plug 'davidhalter/jedi-vim'
Plug 'goerz/jupytext.vim'
Plug 'google/yapf'
Plug 'hdima/python-syntax'
Plug 'hynek/vim-python-pep8-indent'
Plug 'vim-scripts/indentpython.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'  
Plug 'preservim/nerdtree'
Plug 'rkulla/pydiction'
Plug 't9md/vim-choosewin'
Plug 'tell-k/vim-autopep8'
Plug 'tpope/vim-surround'


call plug#end()

syntax on
set background=dark
colorscheme onedark

let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1

let g:jedi#completions_enabled = 1
let g:jedi#use_splits_not_buffers = "right"
nnoremap <leader>d :JediShowDoc<CR>

let g:jupytext_fmt = 'py'

set number
set expandtab 
set tabstop=4 
set shiftwidth=4
