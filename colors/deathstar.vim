" Vim color scheme
"
" Name:         deathstar.vim
" Based on:     https://github.com/qqwaszxxx/vim-battlestation
" Maintainer:   Mitch - mitchnegus
" License:      MIT
"
" This color scheme is derived from `vim-battlestation` by Sergio SA.
" The general structure of the theme provided by Sergio has been left largely
" unchanged, however most of the colors have been modified at least slightly.

set background=dark

" Clear existing highlighting
hi clear
if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'deathstar'

let s:white         = ['#FFFFFF',   15] " Function color
let s:lime          = ['#00FF00',   46] " String color
let s:green3        = ['#00D700',   40] " Visual mode (highlight) text color
let s:skyblue1      = ['#87D7FF',  117] " Escaped text color
let s:red           = ['#FF0000',  196] 
let s:sandybrown    = ['#FFAF5F',  215]
let s:grey3         = ['#080808',  232] " Background color
let s:grey7         = ['#121212',  233] 
let s:grey11        = ['#1c1c1c',  234] " Alternate background color
let s:grey15        = ['#262626',  236] " Visual mode (highlight) color
let s:grey35        = ['#585858',  240] " Line number/cursor background color
let s:grey39        = ['#626262',  241] " Comment color
let s:grey54        = ['#8a8a8a',  245] " Keyword color
let s:grey74        = ['#BCBCBC',  250] " Text color

let s:default_fg = s:grey74
let s:default_bg = s:grey3

let s:italic    = 'italic'
let s:bold      = 'bold'
let s:underline = 'underline'
let s:none      = 'NONE'

let s:default_lst = []
let s:default_str = ''


" Define a function to execute highlighting
function! s:hi(...)
    " Collect arguments and set the fallback if necessary
    let group = a:1
    let fg    = get(a:, 2, s:default_fg)
    let bg    = get(a:, 3, s:default_bg)
    let attr  = get(a:, 4, s:default_str)

    let cmd = ['hi', group]

    " Set the foreground
    if fg != s:default_lst
        call add(cmd, 'guifg='.fg[0])
        call add(cmd, 'ctermfg='.fg[1])
    endif

    " Set the background
    if bg != s:default_lst
        call add(cmd, 'guibg='.bg[0])
        call add(cmd, 'ctermbg='.bg[1])
    endif

    " Set the style attribute
    if attr != s:default_str
        call add(cmd, 'gui='.attr)
        call add(cmd, 'cterm='.attr)
    endif

    exec join(cmd, ' ')
endfunction


"
" --- Vim interface ------------------------------------------------------------
"

call s:hi('Normal')
call s:hi('ColorColumn', s:default_lst, s:grey11)
call s:hi('Search', s:grey54, s:skyblue1)
call s:hi('Visual', s:green3, s:grey15)
call s:hi('ErrorMsg', s:grey54, s:red)

" Tildes at the bottom of a buffer, etc.
call s:hi('NonText', s:white)

" Folding.
call s:hi('FoldColumn', s:white)
call s:hi('Folded')

" Line numbers gutter.
call s:hi('LineNr', s:grey35, s:grey3)

" Cursor colors
call s:hi('Cursor', s:lime, s:grey35)
call s:hi('CursorLine', s:default_lst, s:default_lst, s:none)
call s:hi('CursorLineNr', s:grey54, s:default_bg, s:bold)

" Small arrow used for tabs.
call s:hi('SpecialKey', s:skyblue1, s:default_bg, s:bold)

" File browsers.
call s:hi('Directory', s:grey54, s:default_bg, s:bold)

" Help.
call s:hi('helpSpecial')
call s:hi('helpHyperTextJump', s:skyblue1, s:default_bg, s:underline)
call s:hi('helpNote')

" Popup menu.
call s:hi('Pmenu', s:grey54, s:skyblue1)
call s:hi('PmenuSel', s:skyblue1, s:grey54)

" Notes.
call s:hi('Todo', s:grey3, s:sandybrown, s:bold)

" Signs.
call s:hi('SignColumn')

"
" --- Programming languages ----------------------------------------------------
"

call s:hi('Statement', s:grey54, s:default_bg, s:bold)
call s:hi('PreProc', s:grey54, s:default_bg, s:bold)
call s:hi('String', s:lime)
call s:hi('Comment', s:grey39, s:default_bg)
call s:hi('Constant')
call s:hi('Type', s:grey54, s:default_bg, s:bold)
call s:hi('Function', s:white)
call s:hi('Identifier')
call s:hi('Special')
call s:hi('MatchParen', s:lime, s:grey35)


"
" --- VimL ---------------------------------------------------------------------
"

call s:hi('vimOption')
call s:hi('vimGroup')
call s:hi('vimHiClear')
call s:hi('vimHiGroup')
call s:hi('vimHiAttrib')
call s:hi('vimHiGui')
call s:hi('vimHiGuiFgBg')
call s:hi('vimHiCTerm')
call s:hi('vimHiCTermFgBg')
call s:hi('vimSynType')
hi link vimCommentTitle Comment


"
" --- Ruby ---------------------------------------------------------------------
"

call s:hi('rubyConstant')
call s:hi('rubySharpBang', s:grey39)
call s:hi('rubyStringDelimiter', s:skyblue1)
call s:hi('rubyStringEscape', s:skyblue1)
call s:hi('rubyRegexpEscape', s:skyblue1)
call s:hi('rubyRegexpAnchor', s:skyblue1)
call s:hi('rubyRegexpSpecial', s:skyblue1)


"
" --- Elixir -------------------------------------------------------------------
"

call s:hi('elixirAlias', s:default_fg, s:default_bg, s:none)
call s:hi('elixirDelimiter', s:skyblue1)
call s:hi('elixirSelf', s:default_fg, s:default_bg, s:none)

" For ||, ->, etc.
call s:hi('elixirOperator')

" Module attributes like @doc or @type.
hi link elixirVariable Statement

" While rendered as comments in other languages, docstrings are strings,
" experimental.
hi link elixirDocString String
hi link elixirDocTest String
hi link elixirStringDelimiter String


"
" --- Perl ---------------------------------------------------------------------
"

call s:hi('perlSharpBang', s:grey39)
call s:hi('perlStringStartEnd', s:skyblue1)
call s:hi('perlStringEscape', s:skyblue1)
call s:hi('perlMatchStartEnd', s:skyblue1)


"
" --- Python -------------------------------------------------------------------
"

call s:hi('pythonEscape', s:skyblue1)


"
" --- JavaScript ---------------------------------------------------------------
"

call s:hi('javaScriptFunction', s:grey54, s:default_bg, s:bold)


"
" --- Diffs --------------------------------------------------------------------
"

call s:hi('diffFile', s:grey39)
call s:hi('diffNewFile', s:grey39)
call s:hi('diffIndexLine', s:grey39)
call s:hi('diffLine', s:grey39)
call s:hi('diffSubname', s:grey39)
call s:hi('diffAdded', s:grey54, s:lime)
call s:hi('diffRemoved', s:grey54, s:red)


"
" --- Markdown -----------------------------------------------------------------
"

call s:hi('Title', s:grey54, s:default_bg, s:bold)
call s:hi('markdownHeadingDelimiter', s:grey54, s:default_bg, s:bold)
call s:hi('markdownHeadingRule', s:grey54, s:default_bg, s:bold)
call s:hi('markdownLinkText', s:skyblue1, s:default_bg, s:underline)


"
" --- vim-fugitive -------------------------------------------------------------
"

call s:hi('gitcommitComment', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitOnBranch', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitBranch', s:skyblue1, s:default_bg, s:none)
call s:hi('gitcommitHeader', s:grey54, s:default_bg, s:bold)
call s:hi('gitcommitSelected', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitDiscarded', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitSelectedType', s:default_fg, s:default_bg, s:none)
call s:hi('gitcommitDiscardedType', s:default_fg, s:default_bg, s:none)


"
" --- NeoMake ------------------------------------------------------------------
"

call s:hi('NeomakeMessageSign')
call s:hi('NeomakeWarningSign', s:skyblue1)
call s:hi('NeomakeErrorSign', s:sandybrown)
call s:hi('NeomakeInfoSign')
call s:hi('NeomakeError', s:sandybrown)
call s:hi('NeomakeInfo', s:default_fg, s:default_bg, s:bold)
call s:hi('NeomakeMessage')
call s:hi('NeomakeWarning', s:sandybrown)
