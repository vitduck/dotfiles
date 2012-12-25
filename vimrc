set nocompatible                       " new VIM features 

if has ("gui")
  set hlsearch                          " highlihting the last used search pattern
endif

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
set noerrorbells

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

"key map
set pastetoggle=<F10>
nnoremap ; :
inoremap ;; <esc>

"pathogen 
execute pathogen#infect()
execute pathogen#helptags()

"syntax and menu
filetype plugin indent on
syntax on                               " Syntax highlighting off

"indent
let g:indentLine_enable=1
"let g:indentLine_showFirstIndentLevel=1
let g:indentLine_color_term = 242
let g:indentLine_faster=1

"disable conceal feature for LaTex
let g:tex_conceal=""

"fortran programming"
let fortran_have_tabs=1
let fortran_free_source=1
let fortran_fixed_source=1

"powerline 
set laststatus=2   
set encoding=utf-8 
let g:Powerline_symbols = "unicode"
let g:Powerline_colorscheme = 'zenburn'
