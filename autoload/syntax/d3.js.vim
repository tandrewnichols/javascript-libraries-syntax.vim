" Vim syntax file
" Language:    d3.v4 for javascript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Sfinktah <sfinktah@othree.spamtrak.org>
" Last Change: 2017/02/15
" Version:     4.2.8.0
" URL:         https://github.com/d3/d3/blob/master/API.md

syntax keyword jsD3 d3                      containedin=ALLBUT,jsComment,jsLineComment,jsRegexpString,jsString,jsTemplate,jsTemplateSubstitution nextgroup=jsD3Dot
syntax match   jsD3Dot contained /\./ nextgroup=jsD3Functions
syntax cluster jsD3Functions                 contains=@jsD3Arrays,jsD3Axes,jsD3Brushes,jsD3Chords,@jsD3Collections,jsD3Colors,jsD3Dispatches,jsD3Dragging,jsD3DelimiterSeparatedValues,jsD3Easings,jsD3Forces,jsD3NumberFormats,jsD3Geographies,jsD3GeographiesStreams,jsD3GeographiesTransforms,jsD3Hierarchies,jsD3Interpolators,jsD3Paths,jsD3Polygons,jsD3Quadtrees,jsD3Queues,jsD3RandomNumbers,jsD3Requests,jsD3Scales,jsD3Selections,jsD3Shapes,jsD3TimeFormats,jsD3TimeIntervals,jsD3Timers,jsD3Transitions,jsD3VoronoiDiagrams,jsD3Zooming

syntax cluster jsD3Arrays	                  contains=jsD3ArraysStatistics,jsD3ArraysSearch,jsD3ArraysTransformations,jsD3ArraysHistograms,jsD3Axes,jsD3Arrays
syntax keyword jsD3ArraysStatistics         contained min max extent sum mean median quantile variance deviation
syntax keyword jsD3ArraysSearch             contained scan bisect bisectRight bisectLeft bisector ascending descending
syntax keyword jsD3ArraysTransformations    contained merge pairs permute shuffle ticks tickStep range transpose zip
syntax keyword jsD3ArraysHistograms         contained histogram thresholdFreedmanDiaconis thresholdScott thresholdSturges
syntax keyword jsD3Axes                     contained axisTop axisRight axisBottom axisLeft
syntax keyword jsD3Brushes                  contained brush brushX brushY brushSelection
syntax keyword jsD3Chords                   contained chord ribbon

syntax cluster jsD3Collections              contains=jsD3CollectionsObjects,jsD3CollectionsMaps,jsD3CollectionsSets,jsD3CollectionsNests
syntax keyword jsD3CollectionsObjects       contained keys values entries
syntax keyword jsD3CollectionsMaps          contained map
syntax keyword jsD3CollectionsSets          contained set
syntax keyword jsD3CollectionsNests         contained nest

syntax keyword jsD3Colors                   contained color rgb hsl lab hcl cubehelix
syntax keyword jsD3Dispatches               contained dispatch
syntax keyword jsD3Dragging                 contained drag dragDisable dragEnable
syntax keyword jsD3DelimiterSeparatedValues contained dsvFormat csvParse csvParseRows csvFormat csvFormatRows tsvParse tsvParseRows tsvFormat tsvFormatRows
syntax keyword jsD3Easings                  contained easeLinear easePolyIn easePolyOut easePolyInOut easeQuad easeQuadIn easeQuadOut easeQuadInOut easeCubic easeCubicIn easeCubicOut easeCubicInOut easeSin easeSinIn easeSinOut easeSinInOut easeExp easeExpIn easeExpOut easeExpInOut easeCircle easeCircleIn easeCircleOut easeCircleInOut easeElastic easeElasticIn easeElasticOut easeElasticInOut easeBack easeBackIn easeBackOut easeBackInOut easeBounce easeBounceIn easeBounceOut easeBounceInOut
syntax keyword jsD3Forces                   contained forceSimulation forceCenter forceCollide forceLink forceManyBody forceX forceY
syntax keyword jsD3NumberFormats            contained format formatPrefix formatSpecifier formatLocale formatDefaultLocale precisionFixed precisionPrefix precisionRound
syntax keyword jsD3Geographies              contained geoPath geoAlbers geoAlbersUsa geoAzimuthalEqualArea geoAzimuthalEquidistant geoConicConformal geoConicEqualArea geoConicEquidistant geoEquirectangular geoGnomonic geoMercator geoOrthographic geoStereographic geoTransverseMercator geoProjection geoProjectionMutator geoAzimuthalEqualAreaRaw geoAzimuthalEquidistantRaw geoConicConformalRaw geoConicEqualAreaRaw geoConicEquidistantRaw geoEquirectangularRaw geoGnomonicRaw geoMercatorRaw geoOrthographicRaw geoStereographicRaw geoTransverseMercatorRaw geoArea geoBounds geoCentroid geoDistance geoLength geoInterpolate geoRotation geoCircle geoGraticule geoClipExtent
syntax keyword jsD3GeographiesStreams       contained geoStream
syntax keyword jsD3GeographiesTransforms    contained geoIdentity geoTransform
syntax keyword jsD3Hierarchies              contained hierarchy stratify cluster tree treemap treemapBinary treemapDice treemapSlice treemapSliceDice treemapSquarify treemapResquarify partition pack packSiblings packEnclose
syntax keyword jsD3Interpolators            contained interpolate interpolateArray interpolateDate interpolateNumber interpolateObject interpolateRound interpolateString interpolateTransformCss interpolateTransformSvg interpolateZoom interpolateRgb interpolateRgbBasis interpolateRgbBasisClosed interpolateHsl interpolateHslLong interpolateLab interpolateHcl interpolateHclLong interpolateCubehelix interpolateCubehelixLong interpolateBasis interpolateBasisClosed quantize
syntax keyword jsD3Paths                    contained path
syntax keyword jsD3Polygons                 contained polygonArea polygonCentroid polygonHull polygonContains polygonLength
syntax keyword jsD3Quadtrees                contained quadtree
syntax keyword jsD3Queues                   contained queue
syntax keyword jsD3RandomNumbers            contained randomUniform randomNormal randomLogNormal randomBates randomIrwinHall randomExponential
syntax keyword jsD3Requests                 contained request csv html json text tsv xml
syntax keyword jsD3Scales                   contained scaleLinear scalePow scaleSqrt scaleLog scaleIdentity scaleTime scaleUtc scaleSequential interpolateViridis interpolateInferno interpolateMagma interpolatePlasma interpolateWarm interpolateCool interpolateRainbow interpolateCubehelixDefault scaleQuantize scaleQuantile scaleThreshold scaleOrdinal scaleImplicit scaleBand scalePoint schemeCategory10 schemeCategory20 schemeCategory20b schemeCategory20c
syntax keyword jsD3Selections               contained selection select selectAll matcher selector selectorAll window creator event customEvent mouse touch touches local namespace namespaces
syntax keyword jsD3Shapes                   contained arc pie line radialLine area radialArea curveBasis curveBasisClosed curveBasisOpen curveBundle curveCardinal curveCardinalClosed curveCardinalOpen curveCatmullRom curveCatmullRomClosed curveCatmullRomOpen curveLinear curveLinearClosed curveMonotoneX curveMonotoneY curveNatural curveStep curveStepAfter curveStepBefore symbol symbols symbolCircle symbolCross symbolDiamond symbolSquare symbolStar symbolTriangle symbolWye stack stackOrderAscending stackOrderDescending stackOrderInsideOut stackOrderNone stackOrderReverse stackOffsetExpand stackOffsetNone stackOffsetSilhouette stackOffsetWiggle
syntax keyword jsD3TimeFormats              contained timeFormat timeParse utcFormat utcParse isoFormat isoParse timeFormatLocale timeFormatDefaultLocale
syntax keyword jsD3TimeIntervals            contained timeInterval timeMillisecond utcMillisecond timeMilliseconds utcMilliseconds timeSecond utcSecond timeSeconds utcSeconds timeMinute utcMinute timeMinutes utcMinutes timeHour utcHour timeHours utcHours timeDay utcDay timeDays utcDays timeWeek utcWeek timeWeeks utcWeeks timeSunday utcSunday timeSundays utcSundays timeMonday utcMonday timeMondays utcMondays timeTuesday utcTuesday timeTuesdays utcTuesdays timeWednesday utcWednesday timeWednesdays utcWednesdays timeThursday utcThursday timeThursdays utcThursdays timeFriday utcFriday timeFridays utcFridays timeSaturday utcSaturday timeSaturdays utcSaturdays timeMonth utcMonth timeMonths utcMonths timeYear utcYear timeYears utcYears
syntax keyword jsD3Timers                   contained now timer timerFlush timeout interval
syntax keyword jsD3Transitions              contained transition active interrupt
syntax keyword jsD3VoronoiDiagrams          contained voronoi
syntax keyword jsD3Zooming                  contained zoom zoomTransform zoomIdentity

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

  HiLink jsD3                         Constant
  HiLink jsD3ArraysStatistics         PreProc
  HiLink jsD3ArraysSearch             PreProc
  HiLink jsD3ArraysTransformations    PreProc
  HiLink jsD3ArraysHistograms         PreProc
  HiLink jsD3Axes                     PreProc
  HiLink jsD3Brushes                  PreProc
  HiLink jsD3Chords                   PreProc
  HiLink jsD3CollectionsObjects       PreProc
  HiLink jsD3CollectionsMaps          PreProc
  HiLink jsD3CollectionsSets          PreProc
  HiLink jsD3CollectionsNests         PreProc
  HiLink jsD3Colors                   PreProc
  HiLink jsD3Dispatches               PreProc
  HiLink jsD3Dragging                 PreProc
  HiLink jsD3DelimiterSeparatedValues PreProc
  HiLink jsD3Easings                  PreProc
  HiLink jsD3Forces                   PreProc
  HiLink jsD3NumberFormats            PreProc
  HiLink jsD3Geographies              PreProc
  HiLink jsD3GeographiesStreams       PreProc
  HiLink jsD3GeographiesTransforms    PreProc
  HiLink jsD3Hierarchies              PreProc
  HiLink jsD3Interpolators            PreProc
  HiLink jsD3Paths                    PreProc
  HiLink jsD3Polygons                 PreProc
  HiLink jsD3Quadtrees                PreProc
  HiLink jsD3Queues                   PreProc
  HiLink jsD3RandomNumbers            PreProc
  HiLink jsD3Requests                 PreProc
  HiLink jsD3Scales                   PreProc
  HiLink jsD3Selections               PreProc
  HiLink jsD3Shapes                   PreProc
  HiLink jsD3TimeFormats              PreProc
  HiLink jsD3TimeIntervals            PreProc
  HiLink jsD3Timers                   PreProc
  HiLink jsD3Transitions              PreProc
  HiLink jsD3VoronoiDiagrams          PreProc
  HiLink jsD3Zooming                  PreProc

  delcommand HiLink
endif


