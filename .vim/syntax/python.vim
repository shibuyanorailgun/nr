syntax match pyFunction display "\w\+\s*("ms=s,me=e-1
highlight def link pyFunction Function

syntax match PyMacro_ display "\<[A-Z_][A-Z0-9_]\+\>"
highlight def link PyMacro_ Constant

setlocal tags+=~/.vim/tags/python27.tags,~/.vim/tags/python27-local.tags

nnoremap <buffer> <F5>      :w<CR>:!python2.7 %<CR>
nnoremap <buffer> <C-G>     :!grep -n <C-R>=expand("<cword>")<CR>
      \ `find -name '*.py'`
