" Autoload functions for copying files

function s:GetVisualSelectionLines()
  " Get the visual selection as a list of lines
  if mode() == 'v'
    let [line_start, column_start] = getpos("v")[1:2]
    let [line_end, column_end] = getpos(".")[1:2]
  else
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
  end
  if (line2byte(line_start)+column_start) > (line2byte(line_end)+column_end)
    let [line_start, column_start, line_end, column_end] =
    \   [line_end, column_end, line_start, column_start]
  end
  let lines = getline(line_start, line_end)
  if len(lines) == 0
    return ''
  endif
  let lines[-1] = lines[-1][:column_end-1]
  let lines[0] = lines[0][column_start-1:]
  return lines
endfunction


function s:IsLastCharacterPunctuation(string)
  " Check if the last character in a string is punctuation followed by a space
  let spaced_punctuation = [".", "!", ";", ",", ")", "]"]
  let lastchar = a:string[strlen(a:string)-1]
  let is_punctuation = (index(spaced_punctuation, lastchar) >= 0)
  return is_punctuation
endfunction


function s:FormatLines(lines)
  " Format the lines appropriately for external programs
  let i = 0
  for line in a:lines
    if line ==# ""
      " Add an extra line break for padding
      let a:lines[i] = "\n\n"
    elseif s:IsLastCharacterPunctuation(line)
      " Add a space after all line-ending periods
      let a:lines[i] = a:lines[i] . " "
    endif
    let i += 1
  endfor
  return a:lines
endfunction


function copy#CopyWithNoLineBreaks() range
  " Copy text to the clipboard without single line breaks
  let lines = s:GetVisualSelectionLines()
  let lines = s:FormatLines(lines)
  let output = join(lines, "")
  let @* = output
endfunction

