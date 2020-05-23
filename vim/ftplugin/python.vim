" Automatic line wrap
set textwidth=89
set colorcolumn=89

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

let b:ale_fixers = ['black', 'isort']
let b:ale_linters = ['flake8', 'mypy']

command! Autoformat :ALEFix
command! GoToDefinition :call jedi#goto()
