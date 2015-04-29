call pathogen#infect()
call pathogen#helptags()

" Highlight search results for visibility
set hlsearch
" Hitting Return clears text highlighting from hlsearch
nnoremap <CR> :noh<CR><CR>
set number
syntax enable
set ts=2 sts=2 sw=2 expandtab

" Toggle option for pasting text from another application
set pastetoggle=<F2>

" Colorscheme config
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

filetype plugin indent on

" Add haml syntax to hamlc
au BufRead,BufNewFile *.hamlc set ft=haml

" Remove trailing whitespace before saving
autocmd FileType c,cpp,java,php,python,ruby,coffee autocmd BufWritePre <buffer> :%s/\s\+$//e

" Syntastic config: linters
let g:syntastic_aggregate_errors = 1 " Show errors from multiple linters
let g:syntastic_always_populate_loc_list = 1 " auto-update list shown using :Errors
let g:syntastic_check_on_open = 1
let g:syntastic_ruby_checkers = ['rubylint', 'rubocop']
let g:syntastic_python_checkers = ['python', 'pep8', 'pep257']
let g:syntastic_coffee_checkers = ['coffeelint']
