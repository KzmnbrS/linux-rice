nmap <silent> <leader>R :GoReferrers<CR>
nmap <silent> <leader>d :GoDef<CR>
nmap <silent> <leader>r :GoRename<CR>

inoremap kf <Esc>:GoFillStruct<CR>
inoremap kl <Esc>:GoIfErr<CR>
inoremap km <Esc>:GoImpl<CR>

nmap zs :DlvToggleBreakpoint<CR>
nmap zc :DlvClearAll<CR>

set formatoptions+=cr
set colorcolumn=90

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=2

let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['vet']
let g:go_metalinter_deadline = "5s"

"For :GoBuild
set autowrite
"On save
let g:go_fmt_command = "goimports"

"ARRound
command ARRDebug :DlvConnect :8088
