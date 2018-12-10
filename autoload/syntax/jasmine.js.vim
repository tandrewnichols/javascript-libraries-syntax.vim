" Vim syntax file
" Language:    jasmine for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     2.5
" URL:         http://jasmine.github.io/


syntax keyword jsJasmine jasmine containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsJdot
syntax match   jsJdot            contained /\./ nextgroup=jsJMethods
syntax keyword jsJMethods        contained any anything createSpy createSpyObj HtmlReporter clock mockDate getEnv objectContaining arrayContaining stringMatching

syntax keyword jsJMethods        contained tick useMock
syntax keyword jsJMethods        contained addReporter specFilter

syntax cluster jsJFunctions      contains=jsJMethods,jsJEnvMethods,jsJEnvMethods,jsJExpectMethods,jsJSpyMethods,jsJSpyAndMethods,jsJSpyCallsMethods
syntax cluster jsJAttrs          contains=jsJExpectNot,jsJSpyAnd,jsJSpyCalls

syntax keyword jsJGlobalMethod   describe done runs waitsFor it beforeEach afterEach beforeAll afterAll containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString nextgroup=@jsAfterIdentifier

syntax keyword jsJGlobalMethod   xdescribe xit containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString nextgroup=@jsAfterIdentifier

syntax keyword jsJGlobalMethod   spyOn containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString nextgroup=@jsAfterIdentifier

syntax keyword jsJSpyAnd         contained and 
syntax keyword jsJSpyAndMethods  contained callThrough returnValue returnValues callFake throwError stub 
syntax keyword jsJSpyCalls       contained calls 
syntax keyword jsJCallsMethods   contained any count argsFor allArgs all mostRecent first reset 

syntax keyword jsJGlobalMethod   expect fail pending containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString nextgroup=@jsAfterIdentifier
syntax keyword jsJExpectNot      contained not contained nextgroup=jsJExpectNotdot

syntax keyword jsJExpectMethods  contained toHaveBeenCalled toHaveBeenCalledTimes toHaveBeenCalledWith toEqual toBe toMatch 
syntax keyword jsJExpectMethods  contained toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy 
syntax keyword jsJExpectMethods  contained toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow 

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

  HiLink jsJasmine         Constant
  HiLink jsJMethods        PreProc
  HiLink jsJEnvMethods     PreProc
  HiLink jsJClockMethods   PreProc
  HiLink jsJGlobalMethod   PreProc
  HiLink jsJSpyAnd         PreProc
  HiLink jsJSpyAndMethods  PreProc
  HiLink jsJSpyCalls       PreProc
  HiLink jsJSpyMethods     PreProc
  HiLink jsJCallsMethods   PreProc
  HiLink jsJExpectNot      PreProc
  HiLink jsJExpectMethods  PreProc

  delcommand HiLink
endif
