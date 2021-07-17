" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Files
nmap <silent> f<space> :Files<CR>

" Rg
nmap <silent> rg<space> :Rg<CR>

" Markdown Distraction Free Mode
nmap <silent> mp<space> :Goyo<CR>

" Markdown Preview in Browser
nmap <silent> mbp<space> :MarkdownPreview<CR>

" Convert 2 space indent to 4 spaces
nmap <silent> t24<space> :set ts=2 sts=2 noet <bar> :retab! <bar> :set ts=4 sts=4 et <bar> :retab<CR>

" Copy to system clipboard
xnoremap <silent> sy<space> "+y

" Clear search
nmap <silent> cs<space> :let @/ = ""<CR>

" Mark task as done in markdown task lists
nmap <silent> td<space> :s/\- \(.*\)/- \~\~\1\~\~/<CR>:let @/ = ""<CR>

" Mark task as undone in markdown task lists
nmap <silent> tu<space> :s/\- \~\~\(.*\)\~\~/- \1/<CR>:let @/ = ""<CR>
