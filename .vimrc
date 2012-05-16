" partly copied from https://github.com/mathiasbynens/dotfiles

" Set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse (scrolling and curser setting)
set mouse=a

" Set colorscheme
colorscheme desert
" Enable syntax highlighting
syntax on
" Enable line numbers
set number
" Highlight current line
set cursorline
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Show the cursor position
set ruler
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

