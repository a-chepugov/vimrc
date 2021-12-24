"" windows
set winminwidth=10
set splitright
set splitbelow

"" buffers
set hidden

" indentation
set autoindent
set noexpandtab
set smarttab
"set tabstop=8
"set softtabstop=0
"set shiftwidth=0

"" search
set hlsearch
set ignorecase
set incsearch
set smartcase

"" perfomance
set lazyredraw

"" text render
set display+=lastline
set encoding=utf-8
syntax on
set linebreak
set scrolloff=3
set nowrap

"" interface
set showtabline=2
set laststatus=2
set ruler
set wildmenu
set wildmode=full
set wildcharm=<Tab>

set termguicolors
colorscheme koehler
set background=dark

set guioptions -=T

set guicursor=
let &t_SI.="\e[5 q"
let &t_SR.="\e[3 q"
let &t_EI.="\e[1 q"
set cursorline
set cursorcolumn

set mouse=a
set noerrorbells
set visualbell
set title
set colorcolumn=120
set number relativenumber
set showcmd
set showmode

"" folding
set foldmethod=syntax
set nofoldenable

"" misc
set autoread
set backspace=indent,eol,start
set confirm
set nopaste
set matchpairs+=<:>,«:»
set clipboard=unnamedplus

"" filetype related config
filetype on
filetype indent on
filetype plugin on

"" undo
let output = system('mkdir -p $HOME/.cache/vim/undo')
set undodir=$HOME/.cache/vim/undo
set undolevels=5000
set undofile
"" backup
let output = system('mkdir -p $HOME/.cache/vim/backup')
set backupdir=~/.cache/vim/backup
"" swap
let output = system('mkdir -p $HOME/.cache/vim/swap')
set dir=~/.cache/vim/swap


