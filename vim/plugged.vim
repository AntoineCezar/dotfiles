call plug#begin('~/.vim/plugged')

  " Plugin manager
  Plug 'junegunn/vim-plug'

  " Color schemes
  Plug 'kristijanhusak/vim-hybrid-material'

  " Status/tabline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Git: A Git wrapper
  Plug 'tpope/vim-fugitive'

  " Git: language support
  Plug 'tpope/vim-git'

  " Comments: Comment stuff out.
  Plug 'tpope/vim-commentary'

  " Pairs: Delete, change and add, parentheses, brackets, quotes, XML tags,
  " and more
  Plug 'tpope/vim-surround'

  " sugar for the UNIX shell commands
  Plug 'tpope/vim-eunuch'

  " Git: Shows a git diff in the 'gutter' (sign column)
  " Plug 'airblade/vim-gitgutter'

  " Full path fuzzy file, buffer, mru, tag, ... finder for Vim
  Plug 'ctrlpvim/ctrlp.vim'

  " fuzzy finder
  Plug 'junegunn/fzf.vim'

  " tree explorer
  Plug 'scrooloose/nerdtree'

  " Displays the tags of the current file in a sidebar
  Plug 'majutsushi/tagbar'
  nmap <F8> :TagbarToggle<CR>

  " Sublime Text's awesome multiple selection feature into Vim
  Plug 'terryma/vim-multiple-cursors'

  " CodeStyle: Define and maintain consistent coding styles.
  Plug 'editorconfig/editorconfig-vim'

  " Intellisense engine for Vim8 & Neovim,
  " full language server protocol support as VSCode 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  source ~/.vim/coc.vim

  " Elm: language support
  Plug 'ElmCast/elm-vim'

  " Fsharp: language support
  Plug 'fsharp/vim-fsharp', {
        \ 'for': 'fsharp',
        \ 'do':  'make fsautocomplete',
        \}

  " Rust: language support
  Plug 'rust-lang/rust.vim'

  " Supercollider: language support
  Plug 'supercollider/scvim'

  " Kotlin: language support
  Plug 'udalov/kotlin-vim'

  " Python: syntax highlighting
  Plug 'vim-python/python-syntax'

  " Asciidoc: language support
  Plug 'asciidoc/vim-asciidoc'

  " HTML5: language support
  Plug 'othree/html5.vim'

  " Javascript: language support
  Plug 'pangloss/vim-javascript'

  " Json: language support
  Plug 'elzr/vim-json'

  " Toml: language support
  Plug 'cespare/vim-toml'

  " GraphQL: language support
  Plug 'jparise/vim-graphql'

  " Go: language support
  Plug 'fatih/vim-go'

  " Haskell: language support
  Plug 'neovimhaskell/haskell-vim'

  " Lua: language support
  Plug 'tbastos/vim-lua'

  " reStructuredText: language support
  Plug 'marshallward/vim-restructuredtext'

  " PlantUML: language support
  Plug 'aklt/plantuml-syntax'

  " VueJs: language support
  Plug 'posva/vim-vue'

call plug#end()
