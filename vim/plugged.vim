call plug#begin('~/.vim/plugged')

  " Plugin manager
  Plug 'junegunn/vim-plug'

  " Color schemes
  Plug 'chriskempson/base16-vim'

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
  Plug 'airblade/vim-gitgutter'

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

  " Linting: Asynchronous Lint Engine
  Plug 'w0rp/ale'
  " Load all plugins now.
  " Plugins need to be added to runtimepath before helptags can be generated.
  packloadall

  " Dark powered asynchronous completion framework for neovim/Vim8
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1

  " CodeSnippets: manager
  Plug 'SirVer/ultisnips'

  " CodeSnippets: snippets
  " Used by ultisnips
  Plug 'honza/vim-snippets'

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

  " Python: jedi autocompletion
  Plug 'davidhalter/jedi-vim'
  let g:jedi#popup_on_dot = 0
  let g:jedi#popup_select_first = 0
  let g:jedi#show_call_signatures = 0
  autocmd FileType python setlocal completeopt-=preview

  " Python: code formating
  Plug 'psf/black'
  let g:black_virtualenv = '~/.local/pipx/venvs/black/'

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

  " Markdown: language support
  Plug 'plasticboy/vim-markdown'

  " PlantUML: language support
  Plug 'aklt/plantuml-syntax'

  " VueJs: language support
  Plug 'posva/vim-vue'

  " Manage simple todo lists
  Plug 'vitalk/vim-simple-todo'

  " Sessions: automated creation and restoration
  Plug 'zhimsel/vim-stay'

call plug#end()
