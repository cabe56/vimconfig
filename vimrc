call pathogen#infect()
call pathogen#helptags()

set nu
syntax enable
set ts=2 sts=2 sw=2 expandtab

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

filetype plugin indent on
