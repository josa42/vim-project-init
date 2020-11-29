function! project_init#source_up(fpath)
  let l:pattern = "%:p"

  while v:true
    let l:pattern .= ":h"
    let dir = expand(l:pattern)

    if l:dir == "/" | return | endif

    if filereadable(dir . "/" . a:fpath)
      exec "source " . dir . "/" . a:fpath
      return
    endif

  endwhile
endfunction

" call s:source_up(".vim/init.vim")
