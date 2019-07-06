"関数はautoload/以下に定義する
scriptencoding utf-8

if !exists('g:loaded_reglister')
  finish
endif
let g:loaded_reglister = 1

let s:save_cpo = &cpo
set cpo&vim

function! reglister#hello_world()
  echo "Hello, World!"
endfunction

function! reglister#stl()
  set stl+=reglister
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
