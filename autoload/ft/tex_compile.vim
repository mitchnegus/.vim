" Autoload functions for compiling TeX files

function ft#tex_compile#makeCompile()
  "Save current file
  update
  "Run the make target (relies on `vim-disptch` plugin)
  Make
endfunction
