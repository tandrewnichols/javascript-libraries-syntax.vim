" Vim syntax file
" Language:    prelude.ls for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     1.3.9
" URL:         http://sugarjs.com/
"              http://sugarjs.com/api

syntax cluster jsSFunctions contains=jsSFunction

" String
syntax keyword jsSFunction contained add assign at camelize capitalize chars codes compact dasherize decodeBase64
syntax keyword jsSFunction contained each encodeBase64 endsWith escapeHTML escapeRegExp escapeURL first from hankaku has
syntax keyword jsSFunction contained hasArabic hasCyrillic hasGreek hasHangul hasHan hasKanji hasHebrew hasHiragana hasKana hasKatakana
syntax keyword jsSFunction contained hasLatin hasThai hasDevanagari hiragana humanize insert isBlank isArabic isCyrillic isGreek
syntax keyword jsSFunction contained isHangul isHan isKanji isHebrew isHiragana isKana isKatakana isKatakana isThai isDevanagari
syntax keyword jsSFunction contained katakana last lines normalize pad padLeft padRight paragraphs parameterize plualize
syntax keyword jsSFunction contained remove removeTags repeat reverse shift singularize spacify startsWith stripTags titleize
syntax keyword jsSFunction contained to toNumber trim trimLeft trimRight truncate underscore unescapeHTML unescapeURL words
syntax keyword jsSFunction contained zenkaku

" Number
syntax keyword jsSFunction contained abbr bytes ceil chr downto duration floor format hex isEven
syntax keyword jsSFunction contained isInteger isMultipleOf isOdd log abs sin asin cos acos tan
syntax keyword jsSFunction contained atan sqrt exp pow metric ordinalize pad round times toNumber
syntax keyword jsSFunction contained millisecond milliseconds second seconds minute minutes hour hours day days
syntax keyword jsSFunction contained week weeks month months year years upto

" Array

syntax keyword jsSFunction contained create add all any at average clone compact count each
syntax keyword jsSFunction contained every exclude filter find findAll findFrom findIndex findIndexFrom first flatten
syntax keyword jsSFunction contained forEach from groupBy inGroups inGroupsOf include indexOf insert intersect isEmpty
syntax keyword jsSFunction contained last lastIndexOf least map max min most none randomize reduce
syntax keyword jsSFunction contained reduceRight remove removeAt sample some sortBy subtract sum to union
syntax keyword jsSFunction contained unique zip

" Object

syntax keyword jsSFunction contained extended fromQueryString isArray isObject isBoolean isDate isFunction isNaN isNumber isString
syntax keyword jsSFunction contained isRegExp toQueryString clone each map any all none count find
syntax keyword jsSFunction contained findAll reduce isEmpty sum average min max least most equal
syntax keyword jsSFunction contained has keys merge reject select size tap values watch 

" Function

syntax keyword jsSFunction contained after bind cancel debounce delay everyfill lazyredrawonce throttle 

" RegExp

syntax keyword jsSFunction contained escape addFlag getFlags removeFlag setFlags

" Date
syntax keyword jsSFunction contained addLocale create future getLocale now past range setLocale addMilliseconds addSeconds
syntax keyword jsSFunction contained addMinutes addHours addDays addWeeks addMonths addYears advance beginningOfDay beginningOfWeek beginningOfMonth
syntax keyword jsSFunction contained beginningOfYear clone daysInMonth endOfDay endOfWeek endOfMonth endOfYear format getISOWeek getUTCOffset
syntax keyword jsSFunction contained getWeekday is isAfter isBefore isBetween isToday isYesterday isTomorrow isWeekday isWeekend
syntax keyword jsSFunction contained isSunday isMonday isTuesday isWednesday isThursday isFriday isSaturday isFuture isLastWeek isLastMonth
syntax keyword jsSFunction contained isLastYear isPast isThisWeek isThisMonth isThisYear isUTC isValid iso relative reset
syntax keyword jsSFunction contained rewind set setISOWeek setWeekday toISOString toJSON millisecondsSince secondsSince minutesSince hoursSince
syntax keyword jsSFunction contained daysSince weeksSince monthsSince yearsSince millisecondsUntil secondsUntil minutesUntil hoursUntil daysUntil weeksUntil
syntax keyword jsSFunction contained monthsUntil yearsUntil millisecondAfter millisecondsAfter secondAfter secondsAfter minuteAfter minutesAfter hourAfter hoursAfter
syntax keyword jsSFunction contained dayAfter daysAfter weekAfter weeksAfter monthAfter monthsAfter yearAfter yearsAfter millisecondAgo millisecondsAgo
syntax keyword jsSFunction contained secondAgo secondsAgo minuteAgo minutesAgo hourAgo hoursAgo dayAgo daysAgo weekAgo weeksAgo
syntax keyword jsSFunction contained monthAgo monthsAgo yearAgo yearsAgo millisecondBefore millisecondsBefore secondBefore secondsBefore minuteBefore minutesBefore
syntax keyword jsSFunction contained hourBefore hoursBefore dayBefore daysBefore weekBefore weeksBefore monthBefore monthsBefore yearBefore yearsBefore
syntax keyword jsSFunction contained millisecondFromNow millisecondsFromNow secondFromNow secondsFromNow minuteFromNow minutesFromNow hourFromNow hoursFromNow dayFromNow daysFromNow
syntax keyword jsSFunction contained weekFromNow weeksFromNow monthFromNow monthsFromNow yearFromNow yearsFromNow utc

" Range

syntax keyword jsSFunction contained clamp clone every intersect isValid span toString union
syntax keyword jsSFunction contained contain[s]

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prelude_js_syntax_inits")
  if version < 508
    let did_prelude_js_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jsSFunction        PreProc


  delcommand HiLink
endif
