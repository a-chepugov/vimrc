set noswapfile
set nobackup
set nowritebackup
set autoread

"" windows
set winminwidth=5
set splitright
set splitbelow

"" buffers
set hidden

"" menu
set wildmenu
set wildmode=full

"" filetype related config
filetype on
filetype indent on
filetype plugin on

set encoding=utf-8

"" indentation
set showtabline=2
set noexpandtab
"set tabstop=4
"set softtabstop=0
set shiftwidth=0
set autoindent

"" search
set hlsearch
set incsearch
set ignorecase
set smartcase

"" set cursor highlighting
set cursorline
"set cursorcolumn

set colorcolumn=121
set nowrap
set number
set ruler
set showcmd
set showmode

set background=dark
colorscheme koehler
"set visualbell
"set laststatus=0

syntax on
"set foldmetod=syntax

set backspace=indent,eol,start

set matchpairs+=<:>,«:»

set mouse=a

set clipboard=unnamedplus


if has('persistent_undo')
	let output = system('mkdir -p $HOME/.cache/vim/undo')
	set undodir=$HOME/.cache/vim/undo
	set undolevels=5000
	set undofile
endif

