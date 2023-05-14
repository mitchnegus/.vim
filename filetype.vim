" My filetype file (see `:help new-filetype` for an in-depth explanation)
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  autocmd!
  autocmd BufRead,BufNewFile *.jinja    call ParseJinjaExtension()
  autocmd BufRead,BufNewFile *.bib      setfiletype tex
  autocmd BufRead,BufNewFile *.oc       setfiletype c
  autocmd BufRead,BufNewFile *.oh       setfiletype c
augroup END


function ParseJinjaExtension()
  let l:mapping = {"py": "python", "md": "markdown"}
  " Expand the filename and get the true extension (not .jinja)
  let l:extension = expand('<afile>:r:e')
  let l:filetype = get(l:mapping, l:extension, l:extension)
  execute "setfiletype" l:filetype
endfunction
