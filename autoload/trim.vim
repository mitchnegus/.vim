" Autoload functions for trimming files

function trim#TrimTrailingWhitespace()
	" Trim trailing whitespace
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfunction
