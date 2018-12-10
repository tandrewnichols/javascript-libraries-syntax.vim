" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     1.1.13.1
" URL:         http://angularjs.org/

syntax keyword jsAngular angular containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsAngularDot
syntax match   jsAngularDot contained /\./ nextgroup=jsAngularMethods
syntax keyword jsAngularMethods contained bind bootstrap copy element equals
syntax keyword jsAngularMethods contained extend forEach fromJson identity injector
syntax keyword jsAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword jsAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword jsAngularMethods contained mock module noop toJson uppercase version

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $anchorScroll $cacheFactory $compile $controller $document
syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $exceptionHandler $filter $httpBackend
syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $locale $parse $rootElement
syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $routeParams $templateCache $window 
syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $cookies $resource $sanitize
syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $element

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $attributes nextgroup=jsASattributesdot
syntax match   jsASattributesdot contained /\./ nextgroup=jsASattributesMethods
syntax keyword jsASattributesMethods contained $normalize $addClass $removeClass $updateClass $observe $set $attr

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $http nextgroup=jsAShttpdot
syntax match   jsAShttpdot contained /\./ nextgroup=jsAShttpMethods
syntax keyword jsAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $interpolate nextgroup=jsASinterpolatedot
syntax match   jsASinterpolatedot contained /\./ nextgroup=jsASinterpolateMethods
syntax keyword jsASinterpolateMethods contained endSymbol startSymbol

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $location nextgroup=jsASlocationdot
syntax match   jsASlocationdot contained /\./ nextgroup=jsASlocationMethods
syntax keyword jsASlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $log nextgroup=jsASlogdot
syntax match   jsASlogdot contained /\./ nextgroup=jsASlogMethods
syntax keyword jsASlogMethods contained error info log warn

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $q nextgroup=jsASqdot
syntax match   jsASqdot contained /\./ nextgroup=jsASqMethods
syntax keyword jsASqMethods contained all defer reject when

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $route nextgroup=jsASroutedot
syntax match   jsASroutedot contained /\./ nextgroup=jsASrouteMethods
syntax keyword jsASrouteMethods contained reload current route

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $timeout nextgroup=jsAStimeoutdot
syntax match   jsAStimeoutdot contained /\./ nextgroup=jsAStimeoutMethods
syntax keyword jsAStimeoutMethods contained cancel

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $scope $rootScope nextgroup=jsASscopedot
syntax match   jsASscopedot contained /\./ nextgroup=jsASscopeMethods
syntax keyword jsASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword jsAServices containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString $cookieStore nextgroup=jsAScookieStoredot
syntax match   jsAScookieStoredot contained /\./ nextgroup=jsAScookieStoreMethods
syntax keyword jsAScookieStoreMethods contained get put remove

syntax cluster jsAFunctions contains=jsAMFunctions
syntax cluster jsAAttrs contains=jsAMAttrs

syntax keyword jsAMFunctions contained config constant controller component directive
syntax keyword jsAMFunctions contained factory filter provider run service value
syntax keyword jsAMAttrs contained name requires


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularjs_js_syntax_inits")
  if version < 508
    let did_angularjs_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsAngular         Constant
  HiLink jsAServices       Constant

  HiLink jsAngularMethods  PreProc
  HiLink jsAMFunctions     PreProc
  HiLink jsAMAttrs         PreProc

  HiLink jsASattributesMethods  PreProc
  HiLink jsAShttpMethods        PreProc
  HiLink jsASinterpolateMethods PreProc
  HiLink jsASlocationMethods    PreProc
  HiLink jsASlogMethods         PreProc
  HiLink jsASqMethods           PreProc
  HiLink jsASrouteMethods       PreProc
  HiLink jsAStimeoutMethods     PreProc
  HiLink jsASscopeMethods       PreProc
  HiLink jsAScookieStoreMethods PreProc

  delcommand HiLink
endif
