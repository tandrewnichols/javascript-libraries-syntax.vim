" Vim syntax file
" Language:    tape for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2018/02/21
" Version:     4.9.0
" URL:         https://github.com/substack/tape


syntax keyword jsTape test       containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsTdot
syntax match   jsTdot            contained /\./ nextgroup=jsTMethods
syntax keyword jsTMethods        contained skip onfinish onFailure createHarness only createStream

syntax keyword jsTapeAssert t    containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsTAssertdot
syntax match   jsTAssertdot      contained /\./ nextgroup=jsTAssertMethods
syntax keyword jsTAssertMethods  contained plan end fail pass timeoutAfter skip ok notOk error
syntax keyword jsTAssertMethods  contained equal notEqual deepEqual notDeepEqual deepLooseEqual notDeepLooseEqual
syntax keyword jsTAssertMethods  contained throws dowsNotThrow test comment

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

  HiLink jsTape            Constant
  HiLink jsTMethods        PreProc
  HiLink jsTapeAssert      Constant
  HiLink jsTAssertMethods  PreProc

  delcommand HiLink
endif
