" GAS/x86_64 assembly
au BufRead,BufNewFile *.sx set filetype=GAS
" .s could also be MIPS assembly, but we're currently overriding this
au BufRead,BufNewFile *.s set filetype=GAS
au BufRead,BufNewFile *.S set filetype=GAS
