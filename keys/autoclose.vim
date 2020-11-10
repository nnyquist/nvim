" -- Autoclose --
"  standard
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>

" hit tab to close and move outside
inoremap '<tab> ''
inoremap "<tab> ""
inoremap `<tab> ``
inoremap (<tab> ()
inoremap {<tab> {}
inoremap [<tab> []

" autoclose two lines below and place cursor in middle
inoremap '<CR> '<CR>'<Esc>O
inoremap "<CR> "<CR>"<Esc>O
inoremap `<CR> `<CR>`<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
