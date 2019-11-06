
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
8,54
12,171
16,476
20,1015
24,1717
28,2687
32,3955
36,5338
40,6846
44,8086
48,8735
52,9055
56,8609
60,7879
64,7212
68,6393
72,5428
76,4717
80,3664
84,3045
88,2448
92,1933
96,1624
100,1270
104,981
108,706
112,562
116,465
120,361
124,282
128,207
132,175
136,133
140,87
144,69
148,54
152,51
156,32
160,27
164,13
168,16
172,9
176,7
180,18
184,18
188,16
192,24
196,14
201,6
205,13
209,7
213,10
217,4
221,3
225,1
229,1
233,5
237,2
241,3
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
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=0-down.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
