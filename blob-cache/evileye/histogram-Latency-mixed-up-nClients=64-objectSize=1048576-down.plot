
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
9,0
13,0
18,0
22,0
27,0
32,0
36,0
41,0
45,0
50,0
55,0
59,0
64,0
68,0
73,0
78,0
82,0
87,0
91,0
96,0
101,0
105,0
110,0
114,0
119,0
124,0
128,0
133,0
137,0
142,0
146,0
151,0
156,0
160,0
165,0
169,0
174,0
179,0
183,0
188,0
192,0
197,0
202,0
206,0
211,0
215,0
220,0
225,0
229,0
234,0
238,0
243,0
248,0
252,1
257,0
261,0
266,2
270,4
275,0
280,2
284,3
289,2
293,6
298,4
303,4
307,9
312,5
316,10
321,12
326,15
330,19
335,16
339,27
344,34
349,32
353,38
358,55
362,40
367,51
372,74
376,77
381,67
385,106
390,106
394,126
399,122
404,145
408,147
413,149
417,204
422,210
427,197
431,189
436,231
440,242
445,239
450,236
454,216
459,227
463,217
468,206
473,187
477,195
482,171
486,187
491,173
496,163
500,131
505,116
509,112
514,106
519,112
523,97
528,84
532,65
537,56
541,54
546,47
551,50
555,40
560,40
564,29
569,29
574,32
578,17
583,16
587,16
592,11
597,9
601,13
606,8
610,5
615,18
620,9
624,3
629,4
633,7
638,5
643,6
647,4
652,7
656,2
661,1
665,1
670,3
675,3
679,2
684,1
688,2
693,0
698,2
702,0
707,1
711,1
716,0
721,1
725,2
730,0
734,1
739,1
744,0
748,1
753,0
757,0
762,0
767,0
771,0
776,0
780,0
785,0
789,0
794,0
799,0
803,0
808,0
812,0
817,0
822,0
826,0
831,0
835,0
840,0
845,0
849,0
854,0
858,0
863,0
868,0
872,0
877,0
881,0
886,0
891,0
895,0
900,0
904,0
909,0
914,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=1048576-down.png"
plot [:914] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

