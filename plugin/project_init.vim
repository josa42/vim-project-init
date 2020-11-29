if exists('g:loaded_project_init')
  finish
endif
let g:loaded_project_init = 1

let s:save_cpo = &cpo
set cpo&vim

augroup project_init
  autocmd!
  autocmd VimEnter * nested call project_init#source_up(get(g:, 'project_init_file', '.vim/init.vim'))
augroup END

let &cpo = s:save_cpo
