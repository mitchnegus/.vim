if &compatible
  set nocompatible
end


" MAPPINGS
" ___________________________________________________
"
let mapleader = ","
" Simplify return to normal mode
imap ;l <Esc><Right>
xmap ;l <Esc><Right>
nmap ;l <Nop>
" Simplify window navigation in normal mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Add newline at cursor without exiting normal mode
:nmap <CR> a<CR><Esc>
" Add space at cursor without exiting normal mode
:nmap <space> a<space><Esc>
" Enable folding with the spacebar
noremap <space><space> za
" Allow multiple repastes (map p to paste (p), reselect (gv), and copy (y) orig. selection in visual mode)
xnoremap p pgvy
