" Vim syntax file
" Language:    require.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     2.1.4.1
" URL:         http://requirejs.org/


syntax keyword jsRequire require requirejs containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsRequiredot
syntax match   jsRequiredot contained /\./ nextgroup=jsRequireMethods
syntax keyword jsRequireMethods contained config

syntax keyword jsRdefine define containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString nextgroup=jsRdefinedot
syntax match   jsRdefinedot contained /\./ nextgroup=jsRdefineMethods
syntax keyword jsRdefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_js_syntax_inits")
  if version < 508
    let did_requirejs_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsRequire         PreProc
  HiLink jsRequireMethods  PreProc
  HiLink jsRdefine         PreProc
  HiLink jsRdefineMethods  PreProc


  delcommand HiLink
endif
