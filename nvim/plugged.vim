call plug#begin('~/.config/nvim/plugged')

  " Plugin manager
  Plug 'junegunn/vim-plug'

  " Syntax checking
  Plug 'scrooloose/syntastic'
  let g:syntastic_always_populate_loc_list=1
  let g:syntastic_python_checkers = ['flake8', 'pylint']

  " Code snippets manager
  Plug 'SirVer/ultisnips'
  " To finish the install:
  " mkdir -p ~/.vim/after/plugin/
  " ln -s ~/.vim/bundle/ultisnips/after/plugin/* ~/.vim/after/plugin/
  " mkdir -p ~/.vim/ftdetect
  " ln -s ~/.vim/bundle/ultisnips/ftdetect/* ~/.vim/ftdetect/
  " See bug: https://bugs.launchpad.net/ultisnips/+bug/1067416

  " Code snippets
  " Used by ultisnips
  Plug 'honza/vim-snippets'

  " Transparent editing of gpg encrypted files
  Plug 'jamessan/vim-gnupg'

  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
  Plug 'kien/ctrlp.vim'

  " Displays the tags of the current file in a sidebar
  Plug 'majutsushi/tagbar'
  nmap <F8> :TagbarToggle<CR>

  " Comment stuff out.
  Plug 'tpope/vim-commentary'

  " A Git wrapper
  Plug 'tpope/vim-fugitive'

  " Sublime Text's awesome multiple selection feature into Vim
  Plug 'terryma/vim-multiple-cursors'

  " Using the jedi autocompletion library for VIM
  Plug 'davidhalter/jedi-vim'
  let g:jedi#popup_on_dot = 0
  let g:jedi#popup_select_first = 0
  let g:jedi#show_call_signatures = 0
  autocmd FileType python setlocal completeopt-=preview

  " Define and maintain consistent coding styles.
  Plug 'editorconfig/editorconfig-vim'

call plug#end()