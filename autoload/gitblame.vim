let s:save_cpo = &cpo
set cpo&vim

function! s:has_vimproc()
  if !exists('s:exists_vimproc')
    try
      call vimproc#version()
      let s:exists_vimproc = 1
    catch
      let s:exists_vimproc = 0
    endtry
  endif
  return s:exists_vimproc
endfunction

function! s:system(str, ...)
  let command = a:str
  let input = a:0 >= 1 ? a:1 : ''

  if a:0 == 0
    let output = s:has_vimproc() ?
          \ vimproc#system(command) : system(command)
  elseif a:0 == 1
    let output = s:has_vimproc() ?
          \ vimproc#system(command, input) : system(command, input)
  else
    " ignores 3rd argument unless you have vimproc.
    let output = s:has_vimproc() ?
          \ vimproc#system(command, input, a:2) : system(command, input)
  endif

  return output
endfunction

function! gitblame#commit_summary(file, line)
  return s:system("git --no-pager blame ".a:file." -L ".a:line.",+1 --porcelain | awk 'NR==1 {print $1}' | xargs git --no-pager log -1 --pretty=format:'%h - (%cd) %s - %an' --date=relative")
endfunction

function! gitblame#echo()
  let file = expand('%')
  let line = line('.')
  echo gitblame#commit_summary(file, line)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
