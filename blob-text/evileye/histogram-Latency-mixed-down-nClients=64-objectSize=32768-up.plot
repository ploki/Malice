
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
12,0
16,0
20,0
24,1
28,0
32,6
36,5
40,17
44,39
48,73
52,117
56,199
60,277
64,422
68,472
72,641
76,837
80,1013
84,1122
88,1300
92,1429
96,1586
100,1677
104,1710
108,1664
112,1725
116,1686
120,1643
124,1451
128,1407
132,1340
136,1288
140,1074
144,1022
148,879
152,764
156,745
160,609
164,583
168,519
172,404
176,400
180,345
184,304
188,238
192,198
196,201
201,172
205,128
209,125
213,129
217,101
221,95
225,76
229,57
233,64
237,55
241,58
245,48
249,35
253,39
257,33
261,25
265,30
269,27
273,14
277,14
281,14
285,13
289,7
293,6
297,6
301,4
305,2
309,4
313,5
317,5
321,5
325,3
329,4
333,6
337,3
341,4
345,2
349,0
353,4
357,2
361,2
365,1
369,0
373,0
377,0
381,1
385,1
389,1
393,0
397,1
402,1
406,0
410,1
414,0
418,0
422,0
426,0
430,0
434,0
438,0
442,0
446,0
450,0
454,0
458,0
462,0
466,0
470,0
474,0
478,0
482,0
486,0
490,0
494,0
498,0
502,0
506,0
510,0
514,0
518,0
522,0
526,0
530,0
534,0
538,0
542,0
546,0
550,0
554,0
558,0
562,0
566,0
570,0
574,0
578,0
582,0
586,0
590,0
594,0
598,0
603,0
607,0
611,0
615,0
619,0
623,0
627,0
631,0
635,0
639,0
643,0
647,0
651,0
655,0
659,0
663,0
667,0
671,0
675,0
679,0
683,0
687,0
691,0
695,0
699,0
703,0
707,0
711,0
715,0
719,0
723,0
727,0
731,0
735,0
739,0
743,0
747,0
751,0
755,0
759,0
763,0
767,0
771,0
775,0
779,0
783,0
787,0
791,0
795,0
799,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=32768-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

