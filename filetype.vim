" My filetype file (see `:help new-filetype` for an in-depth explanation)
if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
  autocmd!
  autocmd BufRead,BufNewFile *.bib	setfiletype tex
  autocmd BufRead,BufNewFile *.oc	setfiletype c
  autocmd BufRead,BufNewFile *.oh	setfiletype c
augroup END
