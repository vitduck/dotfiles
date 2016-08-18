set nocompatible                       " new VIM features 

if has ("gui")
    set hlsearch                          " highlihting the last used search pattern
endif

set ttyfast
set lazyredraw

"color
set t_Co=256                            
set bg=dark

colorscheme zenburn

"general features
set shortmess+=I                        " disable welcome screen
set showmode                            " show mode at the bottom
set history=100                         " keep 100 lines of command line history
set ruler                               " show the cursor position all the time
set number                              " show line number
set bs=2                                " backspace to delete previous characters
set fo=cqrt                             " smart formatting of comments
set incsearch                           " start searching when types
set visualbell t_vb=

"gui mode
set cursorline 
set shortmess+=filmnrxoOtT              " disable visual bell

"brace
set sm                                  " automatic matching braces

"indentation
set expandtab                           " TAB -> softtabstop space
set smarttab                            " TAB -> sapce at line beginning
set tabstop=4                           " the width of TAB character
set softtabstop=4                       " amount of space
set shiftwidth=4                        " >>, <<, == indent width
set autoindent                          " 

"mouse
set mousemodel=popup                    " Turn on the popup menu
set mousehide                           " Hide the mouse cursor when the user types
set mouse=a

set pastetoggle=<F10>

nnoremap ; :
inoremap ;; <esc>
let mapleader = ','

"syntax and menu
filetype plugin indent on
syntax on                               " Syntax highlighting off

"fortran programming"
let fortran_have_tabs=1
let fortran_free_source=1
let fortran_fixed_source=1

"vim-plug 
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic' 
Plug 'scrooloose/nerdcommenter'
Plug 'vim-perl/vim-perl', 
call plug#end()

"level indentation
let g:indentLine_enable = 1
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_faster=1
let g:indentLine_color_term = 245
let g:indentLine_fileTypeExclude = ['text']

"airline 
set laststatus=2   
let g:airline_theme='base16_eighties'

"NERD tree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"synstasic 
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']

"comment
let g:NERDSpaceDelims = 1

"vim-perl 
let perl_sub_signatures = 1
