
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
12,1
16,4
20,16
24,18
28,60
32,115
36,226
40,352
44,532
48,771
52,1019
56,1259
60,1519
64,1789
68,1905
72,2117
76,2085
80,2010
84,1953
88,1782
92,1734
96,1526
100,1386
104,1252
108,1140
112,1050
116,990
120,919
124,776
128,742
132,664
136,591
140,513
144,481
148,466
152,405
156,365
160,291
164,281
168,254
172,229
176,204
180,199
184,149
188,152
192,111
196,102
201,94
205,76
209,73
213,63
217,66
221,57
225,50
229,40
233,41
237,34
241,38
245,29
249,29
253,23
257,19
261,20
265,19
269,23
273,11
277,17
281,8
285,11
289,8
293,10
297,13
301,8
305,7
309,3
313,4
317,3
321,5
325,2
329,2
333,2
337,1
341,0
345,3
349,5
353,3
357,1
361,1
365,2
369,1
373,2
377,2
381,1
385,1
389,0
393,0
397,0
402,0
406,1
410,0
414,0
418,0
422,0
426,0
430,0
434,0
438,0
442,0
446,1
450,0
454,0
458,0
462,2
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
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=0-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

