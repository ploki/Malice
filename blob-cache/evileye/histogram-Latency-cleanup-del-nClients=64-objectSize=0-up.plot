
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
12,0
16,0
20,0
24,0
28,0
32,0
36,0
40,0
44,0
48,2
52,2
56,1
60,1
64,1
68,2
72,2
76,5
80,4
84,1
88,0
92,4
96,1
100,2
104,1
108,1
112,1
116,1
120,1
124,1
128,0
132,2
136,2
140,1
144,0
148,1
152,0
156,1
160,2
164,0
168,1
172,0
176,0
180,0
184,0
188,0
192,0
196,0
201,0
205,0
209,0
213,0
217,0
221,0
225,0
229,0
233,0
237,0
241,0
245,0
249,0
253,0
257,0
261,0
265,0
269,0
273,0
277,0
281,0
285,0
289,0
293,0
297,0
301,0
305,0
309,0
313,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=0-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
