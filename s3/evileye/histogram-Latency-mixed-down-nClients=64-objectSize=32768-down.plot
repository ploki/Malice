
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
8,4
12,40
16,134
20,328
24,467
28,769
32,1052
36,1428
40,1666
44,1824
48,2116
52,2159
56,2134
60,2155
64,1843
68,1800
72,1558
76,1295
80,1155
84,984
88,789
92,676
96,600
100,480
104,424
108,402
112,278
116,262
120,252
124,185
128,168
132,141
136,109
140,113
144,90
148,85
152,61
156,47
160,49
164,46
168,29
172,28
176,34
180,26
184,23
188,25
192,23
196,18
201,12
205,16
209,16
213,8
217,4
221,12
225,1
229,8
233,4
237,4
241,7
245,2
249,4
253,4
257,1
261,2
265,2
269,2
273,2
277,1
281,0
285,0
289,1
293,0
297,0
301,0
305,1
309,0
313,2
317,0
321,0
325,0
329,0
333,1
337,0
341,0
345,0
349,0
353,0
357,0
361,0
365,0
369,0
373,0
377,0
381,0
385,0
389,0
393,0
397,0
402,0
406,0
410,0
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
799,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=32768-down.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
