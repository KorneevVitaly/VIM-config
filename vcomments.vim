function! Comment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^/\#/
  elseif ext == 'js' || ext == 'c' || ext == 'cpp' || ext == 'h' || ext == 'cs'
    silent s:^:\/\/:g
  elseif ext == 'vim'
    silent s:^:\":g
  elseif ext == 'html'
    silent s/^\(.*\)$/<!-- \1 -->/
  endif
endfunction

function! Uncomment()
  let ext = tolower(expand('%:e'))
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^\#//
  elseif ext == 'js' || ext == 'c' || ext == 'cpp' || ext == 'h' || ext == 'cs'
    silent s:^\/\/::g
  elseif ext == 'vim'
    silent s:^\"::g
  elseif ext == 'html'
    silent s/-->//
    silent s/<!-- //
  endif
endfunction
