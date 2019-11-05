
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
12,0
16,0
20,1
24,0
28,4
32,4
36,17
40,27
44,37
48,55
52,100
56,153
60,197
64,262
68,377
72,421
76,570
80,661
84,771
88,905
92,946
96,1012
100,1139
104,1158
108,1222
112,1197
116,1193
120,1227
124,1094
128,1080
132,1054
136,960
140,936
144,931
148,826
152,742
156,680
160,641
164,564
168,516
172,510
176,443
180,374
184,388
188,313
192,284
196,239
201,265
205,223
209,187
213,175
217,154
221,135
225,120
229,93
233,98
237,88
241,72
245,64
249,66
253,55
257,54
261,51
265,43
269,33
273,31
277,28
281,19
285,21
289,22
293,16
297,24
301,17
305,13
309,11
313,14
317,11
321,5
325,4
329,9
333,6
337,5
341,4
345,8
349,4
353,6
357,7
361,5
365,2
369,3
373,9
377,1
381,2
385,1
389,0
393,0
397,4
402,1
406,4
410,0
414,0
418,2
422,0
426,2
430,1
434,0
438,1
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
494,1
498,0
502,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=32768-up.png"
plot [:800] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

