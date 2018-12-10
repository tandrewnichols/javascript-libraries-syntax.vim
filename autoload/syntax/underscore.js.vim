" Vim syntax file
" Language:    underscore.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/01/18
" Version:     1.7.0
" URL:         http://underscorejs.org/
" LoDash:      4.0.0
" URL:         http://lodash.com/

syntax keyword jsunderscore _ containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution
" syntax match   jsunderscoredot contained /\./ nextgroup=@js_Functions
" syntax match   jsunderscoredot contained /([^)]*)\./ nextgroup=@js_Functions

syntax cluster js_Functions contains=js_collections,js_strings,js_arrays,js_functions,js_objects,js_chaining,js_utility,js_lodash,js_math,js_number

syntax match   js_collections contained /contains/
syntax keyword js_collections contained include
syntax keyword js_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword js_collections contained reject every some invoke pluck max min sortBy
syntax keyword js_collections contained groupBy indexBy countBy shuffle toArray size
syntax keyword js_collections contained partition iteratee
" lodash 3.0.0
syntax keyword js_collections contained partition sortByAll includes callback
" lodash 4.0.0
syntax keyword js_collections contained flatMap commit next plant reverse toJSON valueOf
syntax keyword js_collections contained forEachRight invokeMap keyBy orderBy sample sampleSize

" lodash 3.0.0
syntax keyword js_strings contained camelCase capitalize deburr endsWith escapeRegExp
syntax keyword js_strings contained kebabCase pad padLeft padRight repeat snakeCase
syntax keyword js_strings contained startsWith trim trimLeft trimRight trunc words
" lodash 4.0.0
syntax keyword js_strings contained lowerCase lowerFirst padEnd padStart replace startCase
syntax keyword js_strings contained startWith toLower toUpper trimEnd trimStart truncate upperCase
syntax keyword js_strings contained upperFirst

syntax keyword js_arrays contained first initial last rest compact flatten without union
syntax keyword js_arrays contained intersection difference uniq zip object indextOf
syntax keyword js_arrays contained lastIndexOf sortedIndex range
" lodash 3.0.0
syntax keyword js_arrays contained chunk dropRight dropRightWhile dropWhile flattenDeep
syntax keyword js_arrays contained pullAt slice sortedLastIndex takeRight takeRightWhile
syntax keyword js_arrays contained takeWhile
" lodash 4.0.0
syntax keyword js_arrays contained concat differenceBy differenceWith drop fill findLastIndex
syntax keyword js_arrays contained fromPairs head indexOf intersection intersectionBy intersectionWith
syntax keyword js_arrays contained join pull pullAll pullAllBy remove slice sortedIndexBy sortedIndexOf
syntax keyword js_arrays contained sortedLastIndexBy sortedLastIndexOf sortedUniq sortedUniqBy tail
syntax keyword js_arrays contained take takeRightWhile unionBy unionWith uniqBy uniqWith unzipWith
syntax keyword js_arrays contained xorBy xorWith zipObject zipWith

syntax keyword js_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword js_functions contained once after before wrap negate compose flow flowRight
" lodash 3.0.0
syntax keyword js_functions contained ary before curryRight negate rearg
syntax keyword js_functions contained backflow compose partial cancel
" lodash 4.0.0
syntax keyword js_functions contained curry defer eachRight findLast flip negate overArgs rest spread unary 

syntax keyword js_objects contained keys values pairs invert functions extend pick omit
syntax keyword js_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword js_objects contained isObject isArguments isFunction isString isNumber
syntax keyword js_objects contained isFinite isBoolean isDate isRegExp isNaN isNull
syntax keyword js_objects contained isUndefined property matches
" lodash 3.0.0
syntax keyword js_objects contained keysIn valuesIn assign get set
syntax keyword js_objects contained mapKeys
" lodash 4.0.0
syntax keyword js_objects contained assignIn assignInWith assignWith defaultsDeep extendWith
syntax keyword js_objects contained findKey findLastKey forIn forInRight forOwn forOwnRight
syntax keyword js_objects contained functionsIn hasIn mergeWith omitBy pickBy setWith toPairs
syntax keyword js_objects contained toPairsIn transform unset
"
syntax keyword js_utility contained noConflict identify times random mixin uniqueId
syntax keyword js_utility contained escape unescape result template iteratee noop
" lodash 3.0.0
syntax keyword js_utility contained attempt matches matchesProperty propertyOf constant now
" lodash 4.0.0
syntax keyword js_utility contained cond conforms flow identity matches method methodOf nthArg
syntax keyword js_utility contained over overEvery overSome rangeRight times toPath uniqueId

syntax keyword js_chaining contained chain value thru

syntax keyword js_lodash contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword js_lodash contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword js_lodash contained partialRight runInContext support unzip where
syntax keyword js_lodash contained capitalize match slice trim trimLeft trimRight
syntax keyword js_lodash contained constant mapValues now property xor
syntax keyword js_lodash contained create noop transform
" lodash 3.0.0
syntax keyword js_lodash contained isError isMatch isNative isTypedArray toPlainObject
" lodash 4.0.0
syntax keyword js_lodash contained clone cloneDeepWith cloneWith eq gt gte isArrayLike isArrayLikeObject
syntax keyword js_lodash contained isEqualWith isInteger isLength isMatchWith isNil isObjectLike isSafeInteger
syntax keyword js_lodash contained isSymbol lt lte toInteger toLength toNumber toSafeInteger toString
syntax keyword js_lodash contained templateSettings evaluate imports interpolate varible 
syntax keyword js_lodash contained VERSION

" lodash 4.0.0
syntax keyword js_math contained add ceil floor max maxBy mean min minBy round subtract sum sumBy
syntax keyword js_number contained clamp inRange

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_js_syntax_inits")
  if version < 508
    let did_underscore_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsunderscore      Constant

  HiLink js_collections    PreProc
  HiLink js_strings        PreProc
  HiLink js_arrays         PreProc
  HiLink js_functions      PreProc
  HiLink js_objects        PreProc
  HiLink js_utility        PreProc
  HiLink js_chaining       PreProc
  HiLink js_lodash         PreProc
  HiLink js_math           PreProc
  HiLink js_number         PreProc

  delcommand HiLink
endif
