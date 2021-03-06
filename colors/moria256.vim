if exists("g:moria_style")
 let s:moria_style = g:moria_style
else
 let s:moria_style = &background
endif

if exists("g:moria_fontface")
 let s:moria_fontface = g:moria_fontface
else
 let s:moria_fontface = "plain"
endif

execute "command! -nargs=1 Colo let g:moria_style = \"«args»\" | colo moria"

if s:moria_style == "black" || s:moria_style == "dark" || s:moria_style == "darkslategray"
 set background=dark
else
 let s:moria_style = &background
endif

hi clear

if exists("syntax_on")
 syntax reset
endif

let colors_name = "moria"

if &background == "dark"
 if s:moria_style == "dark"
 hi Normal ctermbg=234 ctermfg=250 cterm=none
 hi CursorColumn ctermbg=238 cterm=none
 hi CursorLine ctermbg=238 cterm=none
 elseif s:moria_style == "black"
 hi Normal ctermbg=0 ctermfg=252 cterm=none
 hi CursorColumn ctermbg=237 cterm=none
 hi CursorLine ctermbg=237 cterm=none
 endif
 hi FoldColumn ctermbg=bg ctermfg=19 cterm=none
 hi Folded ctermbg=bg ctermfg=110 cterm=none
 hi LineNr ctermfg=110 cterm=none
 hi NonText ctermbg=bg ctermfg=110 cterm=bold
 hi Pmenu ctermbg=67 ctermfg=0 cterm=none
 hi PmenuSbar ctermbg=60 ctermfg=fg cterm=none
 hi PmenuThumb ctermbg=252 ctermfg=bg cterm=none
 hi SignColumn ctermbg=bg ctermfg=110 cterm=none
 hi StatusLine ctermbg=17 ctermfg=255 cterm=bold
 hi StatusLineNC ctermbg=17 ctermfg=255 cterm=none
 hi VertSplit ctermbg=180 ctermfg=0 cterm=none
 hi TabLine ctermbg=bg ctermfg=179 cterm=underline
 hi TabLineFill ctermbg=bg ctermfg=179 cterm=underline
 if version >= 700
 hi Visual ctermbg=242 cterm=none
 else
 hi Visual ctermfg=0 ctermbg=242 ctermfg=fg cterm=none
 endif
 hi VisualNOS ctermbg=bg ctermfg=247 cterm=bold,underline

hi Cursor ctermbg=214 ctermfg=bg cterm=none
" hi DiffAdd ctermbg=28 ctermfg=fg cterm=none
 hi DiffAdd ctermbg=60 ctermfg=black cterm=none
 hi DiffChange ctermbg=18 ctermfg=fg cterm=none
" hi DiffDelete ctermbg=88 ctermfg=fg cterm=none
 hi DiffDelete ctermbg=52 ctermfg=fg cterm=none
 hi DiffText ctermbg=20 ctermfg=fg cterm=bold
 hi Directory ctermbg=bg ctermfg=33 cterm=none
 hi ErrorMsg ctermbg=9 ctermfg=15 cterm=bold
 hi IncSearch ctermbg=186 ctermfg=0 cterm=none
 hi ModeMsg ctermbg=bg ctermfg=fg cterm=bold
 hi MoreMsg ctermbg=bg ctermfg=146 cterm=bold
 hi PmenuSel ctermbg=184 ctermfg=0 cterm=none
 hi Question ctermbg=bg ctermfg=180 cterm=bold
 hi Search ctermbg=114 ctermfg=0 cterm=none
 hi SpecialKey ctermbg=bg ctermfg=180 cterm=none
 if has("spell")
 hi SpellBad guisp=#ee2c2c cterm=undercurl
 hi SpellCap guisp=#2c2cee cterm=undercurl
 hi SpellLocal guisp=#2ceeee cterm=undercurl
 hi SpellRare guisp=#ee2cee cterm=undercurl
 endif
 hi TabLineSel ctermbg=bg ctermfg=214 cterm=bold
 hi Title ctermbg=0 ctermfg=fg cterm=bold
 hi WarningMsg ctermbg=bg ctermfg=9 cterm=bold
 hi WildMenu ctermbg=184 ctermfg=0 cterm=bold

hi cIncluded ctermbg=bg ctermfg=71 cterm=none
 hi String ctermbg=bg ctermfg=137 cterm=none
 hi Character ctermbg=bg ctermfg=137 cterm=none
 hi Comment ctermbg=bg ctermfg=138 cterm=none
 hi Constant ctermbg=bg ctermfg=71 cterm=none
 hi Error ctermbg=bg ctermfg=9 cterm=none
 hi Identifier ctermbg=bg ctermfg=116 cterm=none
 hi Ignore ctermbg=bg ctermfg=bg cterm=none
 hi lCursor ctermbg=40 ctermfg=0 cterm=none
 hi MatchParen ctermbg=30 cterm=none
 hi PreProc ctermbg=bg ctermfg=182 cterm=none
 hi Special ctermbg=bg ctermfg=180 cterm=none
 hi Todo ctermbg=184 ctermfg=0 cterm=none
 hi Underlined ctermbg=bg ctermfg=39 cterm=underline
hi StorageClass ctermbg=bg ctermfg=210 cterm=none

hi Statement ctermbg=bg ctermfg=111 cterm=none
 hi Type ctermbg=bg ctermfg=215 cterm=none

hi htmlBold ctermbg=bg ctermfg=fg cterm=bold
 hi htmlItalic ctermbg=bg ctermfg=fg cterm=italic
 hi htmlUnderline ctermbg=bg ctermfg=fg cterm=underline
 hi htmlBoldItalic ctermbg=bg ctermfg=fg cterm=bold,italic
 hi htmlBoldUnderline ctermbg=bg ctermfg=fg cterm=bold,underline
 hi htmlBoldUnderlineItalic ctermbg=bg ctermfg=fg cterm=bold,underline,italic
 hi htmlUnderlineItalic ctermbg=bg ctermfg=fg cterm=underline,italic
endif
