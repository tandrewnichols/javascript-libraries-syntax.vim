" Vim syntax file
" Language:    JS Lib syntax post process
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/08
" Version:     0.1
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

if &filetype == 'javascript'
  syntax cluster javascriptLibraryFuncs contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions,@javascriptpFunctions
  syntax cluster javascriptLibraryAttrs contains=@javascriptQAttrs,@javascript_Attrs,@javascriptBAttrs,@javascriptpAttrs
  syntax match   javascriptLMethods /[0-9A-Za-z_$)]\@<=\.\h\w*(\@=/ containedin=ALLBUT,javascriptComment contains=@javascriptLibraryFuncs
  syntax match   javascriptLAttrs /[0-9A-Za-z_$)]\@<=\.\h\w*/ containedin=ALLBUT,javascriptComment contains=@javascriptLibraryAttrs
endif

if &filetype == 'coffee'
  syntax cluster coffeeLibraryFuncs contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions
  syntax cluster coffeeLibraryAttrs contains=@coffeeQAttrs,@coffee_Attrs,@coffeeBAttrs,@coffeepAttrs
  syntax match   coffeeLMethods /[0-9A-Za-z_$)]\@<=\.\h\w*(\@=/   containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs
  syntax match   coffeeLMethods /[0-9A-Za-z_$)]\@<=\.\h\w* \+[0-9A-Za-z_$([{'"]\@=/ containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs
  syntax match   coffeeLMethods /[0-9A-Za-z_$)]\@<=\.\h\w* \([-=]>\)\@=/ containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs
  syntax match   coffeeLAttrs /[0-9A-Za-z_$)]\@<=\.\h\w*/   containedin=ALLBUT,coffeeComment contains=@coffeeLibraryAttrs
endif

if &filetype == 'ls'
  syntax cluster lsLibraryFuncs contains=@lsQFunctions,@ls_Functions,@lsBFunctions,@lspFunctions
  syntax cluster lsLibraryAttrs contains=@lsQAttrs,@ls_Attrs,@lsBAttrs,@lspAttrs
  " ).fun!
  " ).fun()
  " fun0!fun!
  " fun0!fun()
  " obj.fun!
  " obj.fun()
  syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\@<=\h\w*[(!]\@=/   containedin=ALLBUT,lsComment contains=@lsLibraryFuncs
  " ).fun arg
  " !fun arg
  " obj.fun arg
  syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\@<=\h\w* \+[0-9A-Za-z_$([{\'"]\@=/ containedin=ALLBUT,lsComment contains=@lsLibraryFuncs
  " ).fun funarg
  " !fun funarg
  " obj.fun funarg
  syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\@<=\h\w* \(!\?[~-]>\)\@=/ containedin=ALLBUT,lsComment contains=@lsLibraryFuncs
  syntax match   lsLPipe /|>/ containedin=ALLBUT,lsComment skipwhite nextgroup=@lspFunctions
  syntax match   lsLCompose />>/ containedin=ALLBUT,lsComment skipwhite nextgroup=@lspFunctions
  syntax match   lsLAttrs /\([0-9A-Za-z_$][.!]\|)\.\)\@<=\h\w*/   containedin=ALL contains=@lsLibraryAttrs
endif
