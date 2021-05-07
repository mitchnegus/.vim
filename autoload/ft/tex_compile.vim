" Autoload functions for compiling TeX files

function ft#tex_compile#makeCompile()
  "Save current file
  update
  "Run the make target
  execute '!make'
endfunction
