" Vim syntax file
" Language:    React for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     15.4.2.1
" URL:         https://facebook.github.io/react/docs/react-api.html
" URL:         https://facebook.github.io/react/docs/react-component.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword jsReact      React containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsRDot
syntax match   jsRDot       contained /\./ nextgroup=jsRProps,jsRMethods

syntax keyword jsReact      ReactDOM containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsRDDot
syntax match   jsRDDot      contained /\./ nextgroup=jsRDMethods

syntax keyword jsReact      ReactDOMServer containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsRDSDot
syntax match   jsRDSDot     contained /\./ nextgroup=jsRDSMethods

" React
syntax keyword jsRProps     Component nextgroup=jsRCompMethods
syntax keyword jsRProps     PureComponent Children addons
syntax keyword jsRProps     PropTypes nextgroup=jsRPropDot
syntax match   jsRPropDot   contained /\./ nextgroup=jsRPropProps,jsRPropMethods

syntax keyword jsRMethods   createClass createElement createFactory
syntax keyword jsRMethods   cloneElement isValidElement

" ReactDOM
syntax keyword jsRDMethods  render unmountComponentAtNode findDOMNode

" ReactDOMServer
syntax keyword jsRDMethods  renderToString renderToStaticMarkup 

" React.Component
syntax keyword jsRCompMethods contained componentWillMount render componentDidMount
syntax keyword jsRCompMethods contained componentWillReceiveProps shouldComponentUpdate componentWillUpdate render componentDidUpdate
syntax keyword jsRCompMethods contained componentWillUnmount
syntax keyword jsRCompMethods contained setState forceUpdate
syntax keyword jsRCompProps   contained defaultProps displayName propTypes

" React.PropTypes
syntax keyword jsRPropProps   contained array bool func number object string symbol node element isRequired
syntax keyword jsRPropMethods contained instanceOf oneOf oneOfType arrayOf objectOf shape any


syntax cluster jsRFunctions   contains=jsRMethods,jsRDMethods,jsRCompMethods,jsRPropMethods
syntax cluster jsRAttrs       contains=jsRProps,jsRCompProps,jsRPropProps


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

  HiLink jsReact           Constant

  HiLink jsRProps          PreProc
  HiLink jsRDMethods       PreProc
  HiLink jsRCompMethods    PreProc
  HiLink jsRPropMethods    PreProc
  HiLink jsRProps          PreProc
  HiLink jsRCompProps      PreProc
  HiLink jsRPropProps      PreProc

  delcommand HiLink
endif
