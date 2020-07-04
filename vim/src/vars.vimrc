" This fixes colorscheme fail when big line jump
set redrawtime=10000
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Don't want VIM automatically adding endofline shit
set nofixendofline
"" Line Numbers
set number
"" Some vim backspace not working fix shit
set backspace=indent,eol,start
" Needed for some themes.
if has('termguicolors')
  set termguicolors
endif
" For them bomb ass cursiveeeeee fonts
let g:gruvbox_material_enable_italic = 1
" Coc
set statusline=%{LinterStatus()}

"" Snippets shit
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/utilsnippets/']

" php cs fixer config file
let g:php_cs_fixer_config_file = '.php_cs'

" ALE
let g:ale_disable_lsp = 1
let g:ale_php_phpstan_configuration = '/Users/paulestala/.phpstan.neon'
let g:ale_linters = {
\   'php': ['phpstan', 'phpmd'],
\}
let g:airline#extensions#ale#enabled = 1
