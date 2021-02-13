" Initialisation:"{{{

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ayu"
let s:ayu_sign_contrast = get(g:, 'ayu_sign_contrast', 0)
let s:ayu_italic_comment = get(g:, 'ayu_italic_comment', 0)

"}}}

" Helper Functions:"{{{

function! s:sign_bg()
    return s:ayu_sign_contrast ? 'panel_bg' : ''
endfunction

" }}}

" Vim Highlighting: (see :help highlight-groups)"{{{
call ayu#hi('Normal', 'fg', 'bg')
call ayu#hi('ColorColumn', '', 'line')
call ayu#hi('CursorColumn', '', 'line')
call ayu#hi('CursorLine', '', 'line')
call ayu#hi('CursorLineNr', 'accent', 'line')
call ayu#hi('LineNr', 'guide_normal', '')

call ayu#hi('Directory', 'func', '')
call ayu#hi('ErrorMsg', 'fg', 'error', 'standout')
call ayu#hi('VertSplit', 'panel_bg', 'panel_bg')
call ayu#hi('Folded', 'fg_idle', 'panel_bg')
call ayu#hi('FoldColumn', '', s:sign_bg())
call ayu#hi('SignColumn', '', s:sign_bg())

call ayu#hi('MatchParen', 'fg', 'bg', 'underline')
call ayu#hi('ModeMsg', 'string', '')
call ayu#hi('MoreMsg', 'string', '')
call ayu#hi('NonText', 'guide_normal', '')
call ayu#hi('Pmenu', 'fg', 'selection_inactive')
call ayu#hi('PmenuSel', 'fg', 'selection_inactive', 'reverse')
call ayu#hi('Question', 'string', '')
call ayu#hi('Search', 'bg', 'constant')
call ayu#hi('Incsearch', '', 'vcs_modified')
call ayu#hi('SpecialKey', 'selection_inactive', '')
call ayu#hi('SpellCap', 'tag', '', 'underline')
call ayu#hi('SpellLocal', 'keyword', '', 'underline')
call ayu#hi('SpellBad', 'error', '', 'underline')
call ayu#hi('SpellRare', 'regexp', '', 'underline')
call ayu#hi('StatusLine', 'fg', 'panel_bg')
call ayu#hi('StatusLineNC', 'fg_idle', 'panel_bg')
call ayu#hi('WildMenu', 'fg', 'markup')
call ayu#hi('TabLine', 'comment', 'panel_shadow')
call ayu#hi('TabLineFill', 'fg', 'panel_border')
call ayu#hi('TabLineSel', 'fg', 'bg')
call ayu#hi('Title', 'keyword', '')
call ayu#hi('Visual', '', 'selection_inactive')
call ayu#hi('WarningMsg', 'warning', '')
"}}}

" Generic Syntax Highlighting: (see :help group-name)"{{{
call ayu#hi('Comment', 'comment', '', s:ayu_italic_comment ? 'italic' : '')
call ayu#hi('Constant', 'constant', '', '')
call ayu#hi('String', 'string', '')

call ayu#hi('Identifier', 'entity', '')
call ayu#hi('Function', 'func', '')

call ayu#hi('Statement', 'keyword', '')
call ayu#hi('Operator', 'operator', '')

call ayu#hi('PreProc', 'special', '')

call ayu#hi('Type', 'entity', '')
call ayu#hi('Structure', 'special', '')

call ayu#hi('Special', 'special', '')

call ayu#hi('Underlined', 'tag', '', 'underline')

call ayu#hi('Ignore', '', '')

call ayu#hi('Error', 'fg', 'error')

call ayu#hi('Todo', 'markup', '')

" Quickfix window highlighting
call ayu#hi('qfLineNr', 'keyword', '')

call ayu#hi('Conceal', 'comment', '')
call ayu#hi('CursorLineConceal', 'guide_normal', 'line')


" Terminal
" ---------
if has("nvim")
  let g:terminal_color_0 =  ayu#get_color('bg')
  let g:terminal_color_1 =  ayu#get_color('markup')
  let g:terminal_color_2 =  ayu#get_color('string')
  let g:terminal_color_3 =  ayu#get_color('accent')
  let g:terminal_color_4 =  ayu#get_color('tag')
  let g:terminal_color_5 =  ayu#get_color('constant')
  let g:terminal_color_6 =  ayu#get_color('regexp')
  let g:terminal_color_7 =  "#FFFFFF"
  let g:terminal_color_8 =  ayu#get_color('fg_idle')
  let g:terminal_color_9 =  ayu#get_color('error')
  let g:terminal_color_10 = ayu#get_color('string')
  let g:terminal_color_11 = ayu#get_color('accent')
  let g:terminal_color_12 = ayu#get_color('tag')
  let g:terminal_color_13 = ayu#get_color('constant')
  let g:terminal_color_14 = ayu#get_color('regexp')
  let g:terminal_color_15 = ayu#get_color('comment')
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = ayu#get_color('fg')
else
  let g:terminal_ansi_colors =  [ayu#get_color('bg'),        ayu#get_color('markup')]
  let g:terminal_ansi_colors += [ayu#get_color('string'),  ayu#get_color('accent')]
  let g:terminal_ansi_colors += [ayu#get_color('tag'),     ayu#get_color('constant')]
  let g:terminal_ansi_colors += [ayu#get_color('regexp'),  "#FFFFFF"]
  let g:terminal_ansi_colors += [ayu#get_color('fg_idle'), ayu#get_color('error')]
  let g:terminal_ansi_colors += [ayu#get_color('string'),  ayu#get_color('accent')]
  let g:terminal_ansi_colors += [ayu#get_color('tag'),     ayu#get_color('constant')]
  let g:terminal_ansi_colors += [ayu#get_color('regexp'),  ayu#get_color('comment')]
endif
"}}}

" Diff Syntax Highlighting:"{{{
call ayu#hi('DiffAdd', 'vcs_added', 'guide_normal')
call ayu#hi('DiffAdded', 'vcs_added', '')
call ayu#hi('DiffChange', 'vcs_modified', 'guide_normal')
call ayu#hi('DiffDelete', 'vcs_removed', 'guide_normal')
call ayu#hi('DiffRemoved', 'vcs_removed', '')
call ayu#hi('DiffText', 'vcs_modified', 'guide_active')
"}}}

" Netrw:" {{{
call ayu#hi('netrwClassify', 'special', '')
" }}}

" GitGutter:" {{{
call ayu#hi('GitGutterAdd', 'vcs_added', s:sign_bg())
call ayu#hi('GitGutterChange', 'vcs_modified', s:sign_bg())
call ayu#hi('GitGutterDelete', 'vcs_removed', s:sign_bg())
call ayu#hi('GitGutterChangeDelete', 'vcs_modified', s:sign_bg(), 'underline')
" }}}

" Signify:" {{{
call ayu#hi('SignifySignAdd', 'vcs_added', s:sign_bg())
call ayu#hi('SignifySignChange', 'vcs_modified', s:sign_bg())
call ayu#hi('SignifySignDelete', 'vcs_removed', s:sign_bg())
call ayu#hi('SignifySignChangeDelete', 'vcs_modified', s:sign_bg(), 'underline')
" }}}

" NERDTree:" {{{
call ayu#hi('NERDTreeOpenable', 'fg_idle', '')
call ayu#hi('NERDTreeClosable', 'accent', '')
call ayu#hi('NERDTreeUp', 'fg_idle', '')
call ayu#hi('NERDTreeDir', 'func', '')
call ayu#hi('NERDTreeFile', '', '')
call ayu#hi('NERDTreeDirSlash', 'special', '')
" }}}

" Telescope:"{{{
call ayu#hi('TelescopeMatching', 'accent', '')
" }}}

" Neovim Builtin LSP:" {{{
call ayu#hi('LspDiagnosticsDefaultError', 'error', '')
call ayu#hi('LspDiagnosticsUnderlineError', 'error', '', 'underline')
call ayu#hi('LspDiagnosticsSignError', 'error', s:sign_bg())

call ayu#hi('LspDiagnosticsDefaultWarning', 'warning', '')
call ayu#hi('LspDiagnosticsUnderlineWarning', 'warning', '', 'underline')
call ayu#hi('LspDiagnosticsSignWarning', 'warning', s:sign_bg())

call ayu#hi('LspDiagnosticsVirtualTextHint', 'fg_idle', '')
call ayu#hi('LspDiagnosticsSignHint', 'fg', s:sign_bg())

call ayu#hi('LspDiagnosticsVirtualTextInformation', 'fg_idle', '')
call ayu#hi('LspDiagnosticsSignInformation', 'fg', s:sign_bg())
" }}}

" YATS:" {{{
call ayu#hi('typescriptDecorator', 'markup', '')
call ayu#hi('typescriptImport', 'accent', '')
call ayu#hi('typescriptExport', 'accent', '')
call ayu#hi('typescriptIdentifier', 'tag', '', 'italic')
call ayu#hi('typescriptAssign', 'operator', '')
call ayu#hi('typescriptBinaryOp', 'operator', '')
call ayu#hi('typescriptTernaryOp', 'operator', '')
call ayu#hi('typescriptModule', 'keyword', '')
call ayu#hi('typescriptTypeBrackets', 'special', '')
call ayu#hi('typescriptClassName', 'tag', '')
call ayu#hi('typescriptAmbientDeclaration', 'keyword', '')
call ayu#hi('typescriptRegexpString', 'regexp', '')
call ayu#hi('typescriptTry', 'markup', '')
call ayu#hi('typescriptExceptions', 'markup', '')
call ayu#hi('typescriptDebugger', 'markup', '', 'bold')
call ayu#hi('typescriptParens', 'fg', '')
" }}}

" TreeSitter:" {{{
call ayu#hi('TSInclude', 'accent', '')
call ayu#hi('TSParameter', 'identity', '')
call ayu#hi('TSField', 'tag', '')
call ayu#hi('TSAttribute', 'markup', '')
call ayu#hi('TSVariableBuiltin', 'tag', '', 'italic')
call ayu#hi('TSConstBuiltin', 'constant', '')
call ayu#hi('TSStringRegex', 'regexp', '')
call ayu#hi('TSPunctDelimiter', 'accent', '')
" }}}

" Fugitive:" {{{
call ayu#hi('fugitiveUntrackedHeading', 'accent', '')
call ayu#hi('fugitiveUnstagedHeading', 'accent', '')
call ayu#hi('fugitiveStagedHeading', 'accent', '')
call ayu#hi('fugitiveHeading', 'accent', '')
" }}}

" Git Commit:" {{{
call ayu#hi('gitcommitBranch', 'func', '')
call ayu#hi('gitcommitHeader', 'accent', '')
call ayu#hi('gitcommitSummary', 'fg', '')
call ayu#hi('gitcommitOverflow', 'markup', '')
" }}}

" Vim:" {{{
call ayu#hi('vimUserFunc', 'func', '')
hi! link vimVar NONE
call ayu#hi('vimFunction', 'func', '')
call ayu#hi('vimIsCommand', '', '')
" }}}

" XML:" {{{

call ayu#hi('xmlTag', 'special', '')
call ayu#hi('xmlTagName', 'keyword', '')
call ayu#hi('xmlEntity', 'tag', '')
call ayu#hi('xmlEntityPunct', 'operator', '')
call ayu#hi('xmlEqual', 'operator', '')

" }}}
