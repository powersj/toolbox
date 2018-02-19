" -- Display
set nocompatible
set number
set ruler
set wrap
set scrolloff=3
set guioptions=T
set cmdheight=1
set cursorline

" -- Search
set history=700
set ignorecase
set smartcase
set hlsearch

" -- Beep
set visualbell
set noerrorbells

" -- Backspace
set backspace=eol,start,indent
"set backspace=indent,eol,start

" -- Theme
syntax enable
set background=dark
colorscheme molokai
" colorscheme solarized

filetype on
filetype plugin on
filetype indent on
set antialias

" -- Buffer
set hidden

" -- Editing
" tells me when a file has been edited externally
set autoread
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
:autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>

" -- Tabs
" 4 space tab indent width
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" See multipul spaces as an indent
set softtabstop=4

" -- Status Line
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ \ Col:\ %c

" -- Misc
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

