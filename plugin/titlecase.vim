if exists('g:loaded_titlecase')
    finish
endif
let g:loaded_titlecase = 1

" Mnemonics:
" CoeRce Titlecase
"
" `vim-abolish` already uses `crt` to perform a simpler titlecase coercion.
" But it only works on the word under the cursor. So it's not very useful.
" Besides, we already have `m-u c` which does something similar.
nno <silent> crt     :<C-U>set opfunc=titlecase#op<CR>g@
nno <silent> crtt    :<C-U>set opfunc=titlecase#op<Bar>exe 'norm! '.v:count1.'g@_'<CR>

xno <silent> <m-u>c     :<C-U>exe titlecase#op('vis')<CR>
xno <silent> <m-u>c     :<C-U>exe titlecase#op('vis')<CR>
