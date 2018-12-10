" Vim syntax file
" Language:    Backbone.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     1.2.3
" URL:         http://backbonejs.org/

syntax keyword jsBackbone Backbone containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsBDot
syntax match   jsBDot     contained /\./ nextgroup=jsBObjects
syntax keyword jsBObjects contained Collection Model View Events Router History Utility sync ajax emulateHTTP emulateJSON

syntax cluster jsBFunctions contains=jsBEvents,jsBModel,jsBCollection,jsBRouter,jsBHistory,jsBSync,jsBView,jsBUtility
syntax cluster jsBAttrs contains=jsBModelAttrs,jsBCollectionAttrs,jsBRouterAttrs,jsBSyncAttrs,jsBViewAttrs

syntax keyword jsBEvents contained on off trigger once listenTo stopListening listenToOnce
syntax keyword jsBModel contained extend constructor initialize get set escape has unset clear
syntax keyword jsBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword jsBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword jsBCollection contained extend constructor initialize toJSON sync add remove reset set get at 
syntax keyword jsBCollection contained push pop unshift shift slice length comparator sort pluck where 
syntax keyword jsBCollection contained findWhere url parse clone fetch create
syntax keyword jsBRouter contained extend constructor initialize route navigate execute
syntax keyword jsBHistory contained start
syntax keyword jsBSync contained ajax 
syntax keyword jsBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword jsBUtility contained noConflict 

syntax keyword jsBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword jsBCollectionAttrs contained model modelId models length comparator url
syntax keyword jsBRouterAttrs contained routes
syntax keyword jsBViewAttrs contained el attributes events
syntax keyword jsBViewAttrs match /$el/
syntax keyword jsBViewAttrs match /$/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_backbone_js_syntax_inits")
  if version < 508
    let did_backbone_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsBackbone         Constant
  HiLink jsBObjects         Constant

  HiLink jsBEvents          PreProc
  HiLink jsBModel           PreProc
  HiLink jsBCollection      PreProc
  HiLink jsBRouter          PreProc
  HiLink jsBHistory         PreProc
  HiLink jsBSync            PreProc
  HiLink jsBView            PreProc
  HiLink jsBUtility         PreProc

  HiLink jsBModelAttrs      PreProc
  HiLink jsBCollectionAttrs PreProc
  HiLink jsBRouterAttrs     PreProc
  HiLink jsBSyncAttrs       PreProc
  HiLink jsBViewAttrs       PreProc


  delcommand HiLink
endif
