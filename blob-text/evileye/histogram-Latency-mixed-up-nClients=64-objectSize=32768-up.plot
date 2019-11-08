
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
32,5
36,4
40,21
44,35
48,76
52,113
56,206
60,273
64,421
68,473
72,643
76,827
80,1028
84,1110
88,1309
92,1426
96,1587
100,1676
104,1707
108,1665
112,1729
116,1688
120,1636
124,1451
128,1385
132,1354
136,1287
140,1077
144,1037
148,880
152,763
156,740
160,604
164,608
168,475
172,424
176,404
180,336
184,316
188,234
192,198
196,199
201,174
205,132
209,123
213,124
217,106
221,92
225,78
229,59
233,60
237,54
241,57
245,46
249,40
253,39
257,32
261,24
265,32
269,26
273,14
277,14
281,15
285,12
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
349,1
353,3
357,2
361,3
365,0
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
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=32768-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
