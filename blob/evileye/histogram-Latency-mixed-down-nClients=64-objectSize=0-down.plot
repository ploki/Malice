
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
8,0
12,0
16,2
20,3
24,25
28,51
32,99
36,153
40,169
44,221
48,259
52,257
56,309
60,301
64,365
68,350
72,371
76,403
80,395
84,407
88,392
92,376
96,448
100,402
104,398
108,393
112,408
116,354
120,382
124,405
128,393
132,376
136,326
140,347
144,327
148,304
152,333
156,295
160,329
164,283
168,293
172,299
176,269
180,271
184,275
188,272
192,248
196,213
201,231
205,246
209,209
213,207
217,202
221,190
225,192
229,194
233,150
237,170
241,178
245,147
249,142
253,133
257,156
261,128
265,120
269,121
273,115
277,105
281,113
285,98
289,87
293,92
297,93
301,71
305,73
309,95
313,74
317,73
321,67
325,55
329,55
333,51
337,53
341,41
345,55
349,46
353,46
357,35
361,31
365,28
369,26
373,45
377,30
381,42
385,34
389,26
393,38
397,21
402,19
406,33
410,18
414,18
418,16
422,24
426,11
430,12
434,16
438,15
442,14
446,11
450,10
454,7
458,13
462,9
466,4
470,12
474,9
478,5
482,7
486,5
490,6
494,4
498,6
502,3
506,5
510,5
514,4
518,8
522,4
526,2
530,5
534,4
538,3
542,3
546,3
550,0
554,1
558,1
562,1
566,0
570,1
574,2
578,2
582,1
586,2
590,1
594,2
598,1
603,2
607,0
611,1
615,2
619,1
623,1
627,0
631,0
635,0
639,1
643,0
647,0
651,0
655,2
659,1
663,1
667,2
671,0
675,1
679,0
683,0
687,1
691,0
695,0
699,0
703,0
707,0
711,0
715,1
719,0
723,0
727,0
731,0
735,1
739,0
743,0
747,0
751,0
755,1
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

