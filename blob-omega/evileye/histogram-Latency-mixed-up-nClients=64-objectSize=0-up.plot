
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,1
12,1
16,14
20,34
24,88
28,176
32,350
36,565
40,863
44,1173
48,1619
52,2073
56,2473
60,2832
64,2963
68,3144
72,2917
76,2836
80,2614
84,2345
88,2180
92,1942
96,1769
100,1564
104,1448
108,1334
112,1188
116,1113
120,1057
124,939
128,785
132,771
136,636
140,585
144,530
148,429
152,448
156,369
160,325
164,278
168,262
172,208
176,220
180,173
184,162
188,150
192,134
196,85
201,103
205,102
209,75
213,73
217,63
221,38
225,52
229,48
233,33
237,24
241,31
245,25
249,18
253,17
257,17
261,15
265,14
269,13
273,11
277,9
281,15
285,12
289,15
293,9
297,9
301,6
305,8
309,3
313,7
317,4
321,3
325,5
329,6
333,2
337,4
341,2
345,3
349,4
353,1
357,1
361,1
365,2
369,1
373,0
377,0
381,3
385,0
389,4
393,1
397,1
402,0
406,0
410,1
414,0
418,0
422,1
426,0
430,0
434,0
438,0
442,0
446,0
450,1
454,0
458,0
462,0
466,0
470,0
474,0
478,0
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
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=0-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
