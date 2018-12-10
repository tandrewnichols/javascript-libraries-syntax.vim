" Vim syntax file
" Language:    handlebars for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     2.0.0
" URL:         http://handlebarsjs.com/

syntax keyword jsHandlebars Handlebars containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsHDot,jsHutility
syntax match   jsHDot       contained /\./ nextgroup=@jsHmethods
" syntax match   jsunderscoredot contained /([^)]*)\./ nextgroup=@js_Functions

syntax cluster jsHFunctions contains=jsHmethods,jsHutilityMethod

syntax keyword jsHmethods   contained compile precompile template unregisterPartial registerPartial
syntax keyword jsHmethods   contained registerHelper unregisterHelper SafeString escapeExpression
syntax keyword jsHmethods   contained createFrame create log

syntax keyword jsHutility   contained Utils nextgroup=jsHUDot
syntax match   jsHUDot      contained /\./ nextgroup=@jsHutilityMethods

syntax keyword jsHutilityMethods   contained isEmpty extend toString isArray isFunction appendContextPath


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_js_syntax_inits")
  if version < 508
    let did_underscore_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsHandlebars      Constant

  HiLink jsHmethods        PreProc
  HiLink jsHutility        PreProc
  HiLink jsHutilityMethod  PreProc

  delcommand HiLink
endif
