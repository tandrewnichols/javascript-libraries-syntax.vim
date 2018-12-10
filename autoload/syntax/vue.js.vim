" Vim syntax file
" Language:    vue.js for JavaScript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'js'
  setlocal iskeyword+=$
endif

syntax keyword jsVue             Vue vm containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsVDot
syntax match   jsVDot            contained /\./ nextgroup=jsVFunctions,jsVAttrs

" Vue.*
syntax cluster jsVFunctions      contains=jsVAPI,jsVMethods
syntax cluster jsVAttrs          contains=jsVConfig,jsVProp

syntax keyword jsVConfig         contained config silent optionMergeStrategies devtools errorHandler keyCodes

syntax keyword jsVAPI            contained extend nextTick set delete directive filter component use mixin compile

syntax keyword jsVProp           contained $data $el $options $parent $root $children $slots $refs $isServer 
syntax keyword jsVMethods        contained $watch $set $delete $on $once $off $emit $mount $forceUpdate $nextTick $destory


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_js_syntax_inits")
  if version < 508
    let did_jquery_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsVMethods        Constant

  HiLink jsVConfig         PreProc
  HiLink jsVProp           PreProc
  HiLink jsVMethods        PreProc

  delcommand HiLink
endif
