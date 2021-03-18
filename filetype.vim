" My filetype file (see `:help new-filetype` for an in-depth explanation)
if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.bib	setfiletype tex
augroup end
