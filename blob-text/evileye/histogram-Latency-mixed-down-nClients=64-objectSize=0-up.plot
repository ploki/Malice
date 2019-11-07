
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
12,3
16,2
20,12
24,61
28,145
32,309
36,532
40,856
44,1264
48,1869
52,2334
56,2724
60,3109
64,3316
68,3180
72,3181
76,2920
80,2582
84,2474
88,2090
92,1967
96,1692
100,1612
104,1491
108,1335
112,1166
116,1133
120,1017
124,854
128,783
132,677
136,606
140,505
144,492
148,466
152,365
156,325
160,306
164,261
168,241
172,172
176,161
180,149
184,124
188,144
192,107
196,102
201,90
205,75
209,62
213,47
217,57
221,50
225,51
229,36
233,39
237,20
241,19
245,16
249,20
253,15
257,17
261,14
265,12
269,10
273,11
277,21
281,8
285,6
289,5
293,5
297,5
301,3
305,7
309,12
313,1
317,6
321,2
325,5
329,3
333,6
337,6
341,5
345,7
349,2
353,4
357,4
361,0
365,0
369,1
373,1
377,2
381,0
385,2
389,1
393,1
397,1
402,0
406,1
410,0
414,1
418,0
422,0
426,0
430,0
434,0
438,0
442,1
446,0
450,0
454,0
458,0
462,0
466,0
470,1
474,0
478,1
482,1
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

