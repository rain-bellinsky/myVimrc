"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/paredit.vim'
Plug 'w0rp/ale'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"configure lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set showtabline=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"rainbow brackets for lisp
":RainbowToggle to start
let g:rainbow_active = 0
let g:rainbow_conf = {
\   'ctermfgs': ['green', 'blue', 'yellow', 'red'],
\}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nerd tree
map <C-n> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tagbar
nmap <F8> :TagbarToggle<CR>

"super tab
let g:SuperTabDefaultCompletionType = "<c-p>"
"dont use slimv: conflict with super tab
"racket support
if has("autocmd")

  au BufReadPost *.rkt,*.rktl set filetype=scheme

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"
"fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1

"add line number
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts                                                                                                                                             
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting 
syntax enable 

" Enable 256/true colors palette in Terminal

"set t_Co=256

" not working with tmux, use 256 colors instead
if has("termguicolors")
   set termguicolors
endif

try
    colorscheme monokai
    let g:monokai_term_italic = 1
    let g:monokai_gui_italic = 1
catch
endtry


" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
set expandtab
autocmd Filetype c setlocal shiftwidth=4
autocmd Filetype cpp setlocal shiftwidth=4
" Be smart when using tabs ;)
set smarttab
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
"set cindent

