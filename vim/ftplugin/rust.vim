let b:rustfmt_autosave = 1

let b:ale_fixers = ['rustfmt']
let b:ale_linters = ['analyzer']

command! Autoformat :RustFmt
command! RunTestUnderCursor :RustTest
command! GoToDefinition :ALEGoToDefinition

if !exists(':RustCheck')
  function! s:RustCheck()
    let s:output_buffer_name = "RustCheck"

    " save where we are
    let s:prev_winnr=winnr()

    " create buffer
    if !bufexists("s:buf_nr") || !bufexists(s:buf_nr)
      silent execute 'botright new ' . s:output_buffer_name
      let s:buf_nr = bufnr('%')
    endif

    " configure buffer
    silent execute "setlocal filetype=sh"
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " make the buffer modifiable
    setlocal noreadonly
    setlocal modifiable

    " clear the buffer
    %delete _

    " add the console output
    silent execute ".!cargo check"

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable

    " go back where we were
    silent execute s:prev_winnr.'wincmd w'
  endfunction
  command! RustCheck call s:RustCheck()
  noremap <F5> :RustCheck<CR>
endif
