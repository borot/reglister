"関数はautoload/以下に定義する
"コマンドとキーマッピングはplugin/以下に定義する
scriptencoding utf-8

if exists('g:loaded_reglister')
  finish
endif
let g:loaded_reglister= 1

let s:save_cpo = &cpo
set cpo&vim

if !hasmapto('<Plug>ReglisterHelloWorld')
  map <unique> <Leader>a <Plug>ReglisterHelloWorld
end
"nnoremap z :call reglister#hello_world()<CR>

function s:Add(one, two)
  return one . two
endfunction

noremap <unique><script> <Plug>TypecorrAdd <SID>Add
noremap <SID>Add :call <SID>Add('aaa', 'bbb')<CR>
augroup reglister
  autocmd InsertEnter * call reglister#stl()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
