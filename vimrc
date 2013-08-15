" Make Vim behave in a more useful way.
set nocompatible

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=indent,eol,start

" Automatic line wrap
set textwidth=80

"### Encoding ###
" TODO: explain
set encoding=utf-8
" TODO: explain
setglobal fileencoding=utf-8

"### Filetype ###"
" TODO: explain
set filetype=unix
" TODO: explain
set fileformat=unix

"### Colors ###
" When set to "dark", Vim will try to use colors that look good on a dark background.
" When set to "light", Vim will try to use colors that look good on a light background.
" Any other value is illegal.
set background=dark
" When the terminal has colors
if &t_Co > 2 || has("gui_running")
  " Number of colors
  set t_Co=256
  " Syntax highlighting on according to the current value of the 'filetype' option
  syntax on
  " When there is a previous search pattern, highlight all its matches.
  set hlsearch
endif
" Skin
colorscheme wombat256

"### Indentation ###
" autoindent/smartindent n'est specifique a aucun langage et fonctionne en general moins bien que filetype
" Copy indent from current line when starting a new line.
"set autoindent
" Do smart autoindenting when starting a new line.
"set smartindent

"### Tabs ###
" Number of spaces that a <Tab> in the file counts for.
set tabstop=4
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4
" When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set smarttab 
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab
" Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
set softtabstop=4

"### Invisible characters ###
set list
set listchars=tab:→ ,trail:⋅ " /!\ It's a non-breaking space /!\

"### Search ###
" Ignore case in search patterns.  Also used when searching in the tags file.
"set ignorecase	
" Override the 'ignorecase' option if the search pattern contains upper case characters.
"set smartcase 
" While typing a search command, show where the pattern, as it was typed so far, matches.
set incsearch
" When a bracket is inserted, briefly jump to the matching one.
set showmatch

"### UI ###
" When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmenu
" Show (partial) command in the last line of the screen.
set showcmd
" Highlight the screen line of the cursor. Will make screen redrawing slower.
"set cursorline
" Highlight the screen column of the cursor. Will make screen redrawing slower.
"set cursorcolumn

"### Vim Dirs ###
" Create and set the directory for the swap file
if filewritable(expand("~/.vim/swap")) == 2
  set directory=$HOME/.vim/swap
else
  if has("unix") || has("win32unix")
    call system("mkdir $HOME/.vim/swap -p")
    set directory=$HOME/.vim/swap
  endif
endif
" Create and set the directory for the backup file
if filewritable(expand("~/.vim/backup")) == 2
  set backupdir=$HOME/.vim/backup
else
  if has("unix") || has("win32unix")
    call system("mkdir $HOME/.vim/backup -p")
    set backupdir=$HOME/.vim/backup
  endif
endif

"### Plugins ###
" Enable file type detection
filetype indent plugin on
" Vundle plugin manager
if filewritable(expand("~/.vim/bundle/vundle")) == 2
  " Load Vundle
  set runtimepath+=~/.vim/bundle/vundle/
  call vundle#rc()
  " Plugin manger
  Bundle 'gmarik/vundle'

  " Syntax checking
  Bundle 'scrooloose/syntastic'
  let g:syntastic_always_populate_loc_list=1

  " Code snippets
  Bundle 'SirVer/ultisnips'
  " To finish the install:
  " mkdir -p ~/.vim/after/plugin/
  " ln -s ~/.vim/bundle/ultisnips/after/plugin/* ~/.vim/after/plugin/
  " mkdir -p ~/.vim/ftdetect
  " ln -s ~/.vim/bundle/ultisnips/ftdetect/* " ~/.vim/ftdetect/
  " See bug: https://bugs.launchpad.net/ultisnips/+bug/1067416

  " Transparent editing of gpg encrypted files
  Bundle 'jamessan/vim-gnupg'
  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
  Bundle 'kien/ctrlp.vim'
  " Displays the tags of the current file in a sidebar
  Bundle 'majutsushi/tagbar'
  " Easy commenting of code
  Bundle 'scrooloose/nerdcommenter'
  " Displays tags in a window, ordered by class etc.
  Bundle 'majutsushi/tagbar'
  nmap <F8> :TagbarToggle<CR>

  " Displays tags in a window, ordered by class etc.
  Bundle 'tpope/vim-fugitive'
  nmap <F8> :TagbarToggle<CR>
endif

"### Utils ###
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif

"### Mapping ###
let mapleader = ","
