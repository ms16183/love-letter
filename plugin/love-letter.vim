function! LoveLetter(...)

  if a:0 < 1
    let heart = "❤️"
  else
    let heart = a:1
  endif

  let all_line = getline(0, line("$"))
  for line in all_line
    " Ignore blank lines.
    if line != ""
      execute ":normal A" . heart
    endif
    execute ":normal j0"
  endfor
endfunction

command! -nargs=? LoveLetter call LoveLetter(<f-args>)
