syntax on
filetype on
au BufNewFile,BufRead *.tt set filetype=html

set mouse=r

set nohlsearch

colors autumn
set number

" tab = 4 spaces!
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Show tab characters. Visual Whitespace.
set list
set listchars=tab:>-,trail:-

let Grep_Default_Filelist = '*.pm *.pl *.cgi *.css *.js *.html *.t *.tt'

" perltidy
set equalprg=perltidy

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

let perl_want_scope_in_variables = 1

" ctags
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

map <F5> :!su nobody -c "perl %"<cr>

let g:Perl_PerlcriticSeverity = 4

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red
" Display tabs at the beginning of a line in Python mode as bad.
match BadWhitespace /^\s\+/
" Make trailing whitespace be flagged as bad
match BadWhitespace /\s\+$/

set wildmenu

" perlprove
au BufRead,BufNewFile *.t set filetype=perl | compiler perlprove
