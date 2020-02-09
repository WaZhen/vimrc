set nocompatible              " required
" filetype off                  " required
syntax on
syntax enable

" utf-8/cp949 support
set encoding=utf-8
set fileencodings=utf-8,cp949

" Line numbering
set nu 

" Tab = 4 spaces
set ts=4

" Cursor Line
set cursorline

" Smart Indentation
" set smartindent

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Install Vundle if not installed
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" File Browsing (Nerd Tree)
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos = "left"
let mapleader = "," " remaps leader key to ','
noremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" Searching with Ctrl-P
Plugin 'kien/ctrlp.vim'

" Auto-completion
Plugin 'Valloric/YouCompleteMe'

" Sync Clipboard
set clipboard=unnamed

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
Plugin 'tmhedberg/SimpylFold'


""""""""""""""""""""""""""""""""""" 
"             Python              "
"""""""""""""""""""""""""""""""""""
let python_highlight_all=1

" Prompt to run Python script by <F2>
au FileType python map <F2> : !python %:p 
" Save and Run Python script by <F9>
nnoremap <silent> <F9> :!clear;python %:p<CR>

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'fancy'
set rtp+=/home/jmin/anaconda3/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2

" Python Syntax/Highlighting
Plugin 'scrooloose/syntastic'

" Python Syntax/Style checker
" pip install flake8
Plugin 'nvie/vim-flake8' " <F7>

" Python Auto-indent
Plugin 'vim-scripts/indentpython.vim'

" Python commenter
Plugin 'scrooloose/nerdcommenter'

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

""""""""""""""""""""""""""""""""""" 
"           JavaScript            "
"""""""""""""""""""""""""""""""""""
" JavaScript Syntax, Highliting and Indentation
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""
"            HTML                  "
""""""""""""""""""""""""""""""""""""
"Emmet plugin
Plugin 'mattn/emmet-vim'

