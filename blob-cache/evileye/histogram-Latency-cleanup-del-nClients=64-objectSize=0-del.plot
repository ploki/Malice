
set title "Histogram of delstream latency"
$histo << EOD
0,0
4,0
8,3
12,35
16,97
20,475
24,1682
28,4284
32,8625
36,13656
40,17946
44,20140
48,21170
52,20835
56,19999
60,18811
64,18025
68,16429
72,14663
76,12972
80,11139
84,9664
88,8397
92,7006
96,5975
100,5002
104,4335
108,3390
112,2851
116,2472
120,1982
124,1591
128,1328
132,1106
136,864
140,745
144,602
148,476
152,425
156,335
160,280
164,206
168,166
172,141
176,90
180,83
184,82
188,55
192,56
196,47
201,43
205,32
209,27
213,29
217,32
221,23
225,26
229,19
233,22
237,19
241,16
245,10
249,14
253,16
257,13
261,4
265,7
269,5
273,7
277,4
281,2
285,1
289,1
293,2
297,5
301,2
305,2
309,0
313,1
317,1
321,0
325,0
329,0
333,1
337,0
341,1
345,0
349,0
353,1
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
799,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=0-del.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
