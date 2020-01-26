if !exists(":Autoformat")
  command Autoformat :!rustfmt %
  noremap <F3> :Autoformat<CR>
endif
