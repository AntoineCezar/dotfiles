let b:ale_fixers = ['rustfmt']
let b:ale_linters = ['analyzer']

command! Autoformat :RustFmt
command! RunTestUnderCursor :RustTest
command! GoToDefinition :ALEGoToDefinition
