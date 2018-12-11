" Vim syntax file
" Language:    JS Lib syntax post process for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     0.5
" URL:         https://github.com/othree/js-libraries-syntax.vim
"

syntax cluster props add=@jsQFunctions,@js_Functions,@jsBFunctions
syntax cluster props add=@jspFunctions,@jsAFunctions,@jsSFunctions,@jsJFunctions
syntax cluster props add=@jsRaFunctions
syntax cluster props add=@jsQAttrs,@js_Attrs,@jsBAttrs,@jspAttrs,@jsAAttrs,@jsJAttrs
syntax cluster props add=@jsRFunctions,@gavascriptRAttrs
syntax cluster props add=@jsVFunctions,jsVAttrs

if !exists("js_props")
  syntax match jsLDot /\./ containedin=ALLBUT,jsComment,jsLineComment,jsLineComment,jsRegexpString,jsString nextgroup=@props

  syntax region  jsSpreadExpression   contained matchgroup=jsSpreadOperator      start=/\.\.\./ end=/[,}\]]\@=/ contains=@jsExpression
  hi def link jsSpreadOperator       Operator
endif
