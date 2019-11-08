
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,3
12,21
16,127
20,410
24,1221
28,2963
32,6085
36,10172
40,14081
44,16823
48,18086
52,18464
56,17946
60,17380
64,17215
68,16121
72,15069
76,13920
80,12303
84,10879
88,9441
92,7877
96,7019
100,5911
104,5089
108,4314
112,3625
116,3213
120,2677
124,2278
128,1883
132,1594
136,1406
140,1122
144,934
148,772
152,668
156,533
160,380
164,353
168,302
172,245
176,198
180,134
184,133
188,100
192,84
196,77
201,73
205,61
209,33
213,41
217,52
221,34
225,41
229,25
233,23
237,25
241,29
245,32
249,32
253,20
257,25
261,32
265,22
269,13
273,17
277,19
281,11
285,12
289,6
293,8
297,6
301,5
305,2
309,3
313,5
317,3
321,7
325,5
329,1
333,2
337,7
341,5
345,5
349,6
353,6
357,3
361,3
365,0
369,2
373,5
377,1
381,3
385,2
389,0
393,1
397,1
402,1
406,0
410,1
414,1
418,1
422,0
426,1
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
set output "evileye/histogram-Latency-populate-up-nClients=64-objectSize=0-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
