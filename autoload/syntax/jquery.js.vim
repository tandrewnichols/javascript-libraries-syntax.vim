" Vim syntax file
" Language:    jQuery for javascript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2017/02/15
" Version:     1.9.0.2
" URL:         http://api.jquery.com/

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'js'
  setlocal iskeyword+=$
endif

syntax keyword jsjQuery jQuery $ containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=@jsAfterIdentifier
" syntax match   jsjQuerydot       contained /\./ nextgroup=@jsQGlobals
" syntax match   jsjQuerydot       contained /([^)]*)\./ nextgroup=@jsQFunctions

" jQuery.*
syntax cluster jsQGlobals        contains=jsQCore,jsQCoreObj,jsQCoreData,jsQUtilities,jsQProperties
syntax keyword jsQCore           contained holdReady noConflict when
syntax keyword jsQCoreObj        contained Callback Deferred
syntax keyword jsQCoreData       contained data dequeue hasData queue removeData
syntax keyword jsQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword jsQProperties     contained context fx.interval fx.off length support cssHooks
syntax keyword jsQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   jsQUtilities      contained /contains/

" jqobj.*
syntax cluster jsQFunctions      contains=@jsQGlobals,jsQAjax,jsQAttributes,jsQCallbacks,jsQCore,jsQCSS,jsQData,jsQDeferred,jsQDimensions,jsQEffects,jsQEvents,jsQManipulation,jsQMiscellaneous,jsQOffset,jsQTraversing,jsQUtilities
syntax keyword jsQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword jsQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword jsQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword jsQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword jsQCSS            contained css
syntax keyword jsQData           contained clearQueue data dequeue queue removeData
syntax keyword jsQDeferred       contained Deferred always done fail notify progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword jsQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword jsQEffects        contained hide show toggle
syntax keyword jsQEffects        contained animate delay stop finish
syntax keyword jsQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword jsQEffects        contained slideDown slideToggle slideUp
syntax keyword jsQEvents         contained error resize scroll
syntax keyword jsQEvents         contained ready unload
syntax keyword jsQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword jsQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword jsQEvents         contained blur change focus select submit
syntax keyword jsQEvents         contained focusin focusout keydown keypress keyup
syntax keyword jsQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword jsQManipulation   contained clone
syntax keyword jsQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword jsQManipulation   contained append appendTo html prepend prependTo text
syntax keyword jsQManipulation   contained after before insertAfter insertBefore
syntax keyword jsQManipulation   contained detach empty remove
syntax keyword jsQManipulation   contained replaceAll replaceWith
syntax keyword jsQMiscellaneous  contained index toArray
syntax keyword jsQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword jsQTraversing     contained eq filter first has is last map not slice
syntax keyword jsQTraversing     contained add andBack contents end
syntax keyword jsQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
" syntax match   jsASCII                 contained /\\\d\d\d/
" syntax region  jsString                start=/"/  skip=/\\\\\|\\"\|\\\n/  end=/"\|$/ contains=jsASCII,@jSelectors
" syntax region  jsString                start=/'/  skip=/\\\\\|\\'\|\\\n/  end=/'\|$/ contains=jsASCII,@jSelectors

" syntax cluster cssSelectors              contains=cssId,cssClass,cssOperators,cssBasicFilters,cssContentFilters,cssVisibility,cssChildFilters,cssForms,cssFormFilters
" syntax cluster jsNoReserved      add=@cssSelectors
" syntax match   cssId                     contained containedin=jsString /#[0-9A-Za-z_\-]\+/
" syntax match   cssClass                  contained containedin=jsString /\.[0-9A-Za-z_\-]\+/
" syntax match   cssOperators              contained containedin=jsString /*\|>\|+\|-\|\~/
" syntax match   cssBasicFilters           contained containedin=jsString /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lang\|lt\|not\|odd\|root\|target\)/
" syntax match   cssChildFilters           contained containedin=jsString /:\(first\|last\|nth\|only\|nth-last\)-child/
" syntax match   cssChildFilters           contained containedin=jsString /:\(first\|last\|nth\|only\|nth-last\)-of-type/
" syntax match   cssContentFilters         contained containedin=jsString /:\(contains\|empty\|has\|parent\)/
" syntax match   cssForms                  contained containedin=jsString /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
" syntax match   cssVisibility             contained containedin=jsString /:\(hidden\|visible\)/

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

  HiLink jsjQuery          Constant

  HiLink jsQCore           PreProc
  HiLink jsQCoreObj        PreProc
  HiLink jsQCoreData       PreProc

  HiLink jsQAjax           PreProc
  HiLink jsQAttributes     PreProc
  HiLink jsQCallbacks      PreProc
  HiLink jsQCSS            PreProc
  HiLink jsQData           PreProc
  HiLink jsQDeferred       PreProc
  HiLink jsQDimensions     PreProc
  HiLink jsQEffects        PreProc
  HiLink jsQEvents         PreProc
  HiLink jsQManipulation   PreProc
  HiLink jsQMiscellaneous  PreProc
  HiLink jsQOffset         PreProc
  HiLink jsQProperties     PreProc
  HiLink jsQTraversing     PreProc
  HiLink jsQUtilities      PreProc

  " HiLink cssId                     Identifier
  " HiLink cssClass                  Constant
  " HiLink cssOperators              Special
  " HiLink cssBasicFilters           Statement
  " HiLink cssContentFilters         Statement
  " HiLink cssVisibility             Statement
  " HiLink cssChildFilters           Statement
  " HiLink cssForms                  Statement
  " HiLink cssFormFilters            Statement


  delcommand HiLink
endif
