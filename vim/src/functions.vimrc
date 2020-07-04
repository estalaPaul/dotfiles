"" ALE shit
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   ' WARN%d ERR%d ',
    \   all_non_errors,
    \   all_errors
    \)
endfunction
