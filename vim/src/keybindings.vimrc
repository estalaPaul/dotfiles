
"" SCP script for servers
au BufWritePost /Users/paulestala/Documents/projects/* :silent !node ~/bin/sftp.js > /tmp/vim_sftp.log %:p &

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Files
nmap <silent> f<space> :Files<CR>

" Rg
nmap <silent> rg<space> :Rg<CR>

" Markdown Preview
nmap <silent> mp<space> :MarkdownPreview<CR>

" Convert 2 space indent to 4 spaces
nmap <silent> t24<space> :set ts=2 sts=2 noet <bar> :retab! <bar> :set ts=4 sts=4 et <bar> :retab<CR>

" Copy to system clipboard
xnoremap <silent> sy<space> "+y

" Clear search
nmap <silent> cs<space> :let @/ = ""<CR>
