
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,1
8,104
12,364
16,709
20,996
24,1316
28,1516
32,1664
36,1845
40,1948
44,2111
48,2081
52,2065
56,2033
60,1977
64,1739
68,1707
72,1558
76,1323
80,1166
84,980
88,857
92,682
96,557
100,512
104,423
108,350
112,343
116,264
120,220
124,207
128,174
132,149
136,161
140,114
144,80
148,86
152,66
156,58
160,41
164,46
168,42
172,31
176,45
180,21
184,30
188,15
192,18
196,33
201,21
205,10
209,10
213,4
217,4
221,5
225,8
229,2
233,0
237,3
241,4
245,1
249,6
253,0
257,1
261,0
265,0
269,1
273,1
277,1
281,1
285,0
289,0
293,0
297,1
301,0
305,0
309,0
313,1
317,0
321,0
325,0
329,0
333,0
337,0
341,0
345,0
349,0
353,0
357,0
361,0
365,0
369,1
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
799,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=32768-down.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

