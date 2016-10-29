"enables most vim improvements
set nocompatible
filetype off
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
"add plugins here
call vundle#end()
"sets the # of spaces for indentation and runs plugins based on the filetype
filetype indent plugin on
 
"Set number of lines to keep above/below cursor
set so=3

"Auto read when a file is modified from outside
set autoread

"uses the previous line indentation when editing
set autoindent
 
"like autoindent, but improved C syntax support
set smartindent
 
"indents using shiftwidth instead of tabstop or softtabstop
set smarttab
 
"sets 1 tab = 4 spaces, default=8
"set shiftwidth=4
 
"wraps long lines between words
set wrap lbr

"allows backspacing over autoindent, line breaks, the start of an insert
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
 
"enable regex
set magic
 
"highlights matching parenthesis, brackets
set showmatch
 
"the time interval in ms for matched brackets, parenthesis
set mat=2
 
"enable line numbers
set number
 
"color coded syntax
syntax on
 
"incremental search when searching for patterns
set incsearch
 
"shows where you are in the bottom right of screen
set ruler
 
"hides abandoned buffer instead of closing it
set hid
 
"ignore case when searching strings
set ignorecase
 
"if the search string has an uppercase letter, do not ignore case
set smartcase
 
"set the colorscheme for vim
colorscheme delek
 
"shows autocomplete options when executing a command
set wildmenu

"Better splitting behavior
set splitbelow
set splitright

"Shows command in vim window
set showcmd
 
"turns off search highlight when retrun key is pressed in normal mode
nnoremap <CR> :noh<CR><CR>
 
"custom command to remove trailing whitespace from all lines in file
command Delwsp %s/\s\+$//|noh
command Wsudo w !sudo tee %
 
"makes Y yank from current pos to end of line
nnoremap Y y$
 
"the following four commands make it easier to navigate windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
 
"if the filetype is python, <F5> will run the current python file in an empty
"window when in normal mode
autocmd FileType python nnoremap <silent> <buffer> <F5> :!clear;python %<CR>
autocmd FileType sh nnoremap <silent> <buffer> <F5> :!clear;bash %<CR>
autocmd FileType perl nnoremap <silent> <buffer> <F5> :!clear;perl %<CR>
 
"the following two maps will allow j and k to move one visual line when
"dealing with wrapped lines
"nnoremap j gj
"nnoremap k gk
 
"If there is a mouse detected, enable it
"if has('mouse')
"   	set mouse=a
"endif


