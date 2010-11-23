" Load modules via pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Basic configuration
set nocompatible
set ignorecase 
set smartcase
set number
set scrolloff=5
set wrap
let mapleader=","
let g:mapleader=","

set title
colorscheme ir_black
set background=dark

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Tab behavior
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Persistent undo
try
  set undodir=~/.vim/undodir
  set undofile
  set undolevels=1000 " maximum number of changes that can be undone
  set undoreload=10000 " maximum number lines to save for undo on a buffer reload
catch
endtry

" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
nnoremap <CR> :noh<CR><CR>

" No obnoxious noise, flash instead
set visualbell

" Settings for Command-T
set wildignore+=*.o,*.obj,.git,*.pyc

" Use custom filetype behavior for markdown documents (pandoc)
" autocmd Bufread,BufNewFile *.md set filetype=pandoc

" Omni completion
" set ofu=syntaxcomplete#Complete 
" autocmd FileType python set omnifunc=pythoncomplete#Complete

" Nerdtree
" map <F4> :NERDTree<CR>
:noremap <Leader>n :NERDTreeToggle<CR>
" let NERDTreeMouseMode=1 " Single click for everything

" GUI specific behavior
if has("gui_running")
  if has("gui_macvim")
    set gfn=Monaco:h12.00
    "set columns=120
  endif
endif
