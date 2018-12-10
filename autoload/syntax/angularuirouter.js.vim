" Vim syntax file
" Language:   AngularUI Router for javascript
" Maintainer: Dan Hansen <https://www.linkedin.com/in/dansomething>
" URL:        http://angular-ui.github.io/ui-router/

syntax keyword jsUIRouter containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $stateProvider nextgroup=jsASstateProviderdot
syntax match   jsASstateProverdot contained /\./ nextgroup=jsASstateProviderMethods
syntax keyword jsASstateProviderMethods contained state decorator

syntax keyword jsUIRouter containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $urlRouterProvider nextgroup=jsASurlRouterProviderdot
syntax match   jsASstateProverdot contained /\./ nextgroup=jsASurlRouterProviderMethods
syntax keyword jsASurlRouterProviderMethods contained when otherwise rule

syntax keyword jsUIRouter containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $state nextgroup=jsASstatedot
syntax match   jsASstatedot contained /\./ nextgroup=jsASstateMethods
syntax keyword jsASstateMethods contained current get go href includes is reload transitionTo

syntax keyword jsUIRouter containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $urlRouter nextgroup=jsASurlRouterdot
syntax match   jsASurlRouterdot contained /\./ nextgroup=jsASurlRouterMethods
syntax keyword jsASurlRouterMethods contained href sync

syntax keyword jsUIRouter containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $stateParams $uiViewScroll


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularui_router_js_syntax_inits")
  if version < 508
    let did_angularui_router_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsUIRouter        Constant

  HiLink jsASstateProviderMethods           PreProc
  HiLink jsASurlRouterProviderMethods       PreProc
  HiLink jsASstateMethods                   PreProc
  HiLink jsASurlRouterMethods               PreProc

  delcommand HiLink
endif
