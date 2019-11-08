
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,1329
8,5540
12,5840
16,5222
20,4451
24,3825
28,3263
32,2783
36,2460
40,2059
44,1904
48,1714
52,1641
56,1410
60,1201
64,1185
68,1002
72,884
76,694
80,633
84,537
88,449
92,362
96,347
100,263
104,209
108,205
112,157
116,131
120,115
124,124
128,94
132,84
136,68
140,50
144,49
148,47
152,25
156,26
160,22
164,15
168,14
172,11
176,13
180,5
184,9
188,6
192,3
196,7
201,6
205,2
209,5
213,1
217,4
221,3
225,2
229,5
233,0
237,0
241,3
245,1
249,0
253,0
257,2
261,1
265,2
269,0
273,1
277,1
281,0
285,0
289,0
293,1
297,0
301,0
305,0
309,1
313,2
317,3
321,0
325,1
329,2
333,0
337,0
341,0
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
385,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=0-down.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
