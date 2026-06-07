set background=dark
set expandtab ts=4 sw=4

filetype indent on

au FileType python setlocal list listchars=tab:»·,trail:·
au FileType python setlocal ts=8 sw=4 expandtab sts=4 sta
au FileType python setlocal list listchars=tab:»·,trail:·
au FileType python setlocal autoindent

" Set lines to the cursor when moving vertically using j/k
set so=5
" no double spaces after . when joining and reflowing lines
set nojoinspaces
"
" copy indent from current line when starting a new line
set autoindent

setlocal list listchars=tab:»·,trail:·
setlocal ts=8 sw=4 expandtab sts=4 sta
setlocal list listchars=tab:»·,trail:·

" https://stackoverflow.com/questions/6008921/how-to-change-the-highlight-style-in-vim-spellcheck
" https://vi.stackexchange.com/questions/5833/spell-mistakes-have-weird-coloring
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermbg=red
