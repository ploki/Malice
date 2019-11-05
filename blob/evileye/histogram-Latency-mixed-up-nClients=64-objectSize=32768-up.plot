
set title "Histogram of upstream latency"
$histo << EOD
0,0
5,0
10,0
16,0
21,0
27,0
32,1
38,3
43,3
49,10
54,20
60,24
65,38
71,69
76,88
82,102
87,136
93,170
98,219
103,228
109,217
114,289
120,325
125,338
131,384
136,363
142,416
147,411
153,389
158,406
164,437
169,414
175,439
180,387
186,417
191,442
197,367
202,388
207,402
213,347
218,314
224,317
229,331
235,285
240,304
246,283
251,290
257,254
262,238
268,222
273,207
279,229
284,188
290,179
295,173
300,162
306,150
311,142
317,150
322,140
328,115
333,146
339,111
344,94
350,101
355,98
361,79
366,67
372,81
377,54
383,60
388,69
394,55
399,38
404,42
410,52
415,33
421,31
426,37
432,33
437,19
443,25
448,31
454,25
459,29
465,15
470,13
476,28
481,23
487,24
492,9
497,17
503,9
508,4
514,8
519,7
525,10
530,5
536,6
541,5
547,4
552,6
558,3
563,2
569,3
574,4
580,4
585,4
591,1
596,3
601,7
607,2
612,1
618,1
623,1
629,2
634,1
640,0
645,2
651,0
656,2
662,0
667,0
673,1
678,2
684,0
689,0
694,1
700,1
705,0
711,0
716,0
722,0
727,0
733,1
738,1
744,0
749,0
755,0
760,0
766,0
771,1
777,0
782,0
788,0
793,0
798,0
804,0
809,0
815,0
820,0
826,0
831,0
837,0
842,0
848,0
853,0
859,0
864,0
870,0
875,0
881,0
886,0
891,0
897,0
902,0
908,0
913,0
919,0
924,0
930,0
935,0
941,0
946,0
952,0
957,0
963,0
968,0
974,0
979,0
985,0
990,0
995,0
1001,0
1006,0
1012,0
1017,0
1023,0
1028,0
1034,0
1039,0
1045,0
1050,0
1056,0
1061,0
1067,0
1072,0
1078,0
1083,0
1089,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=32768-up.png"
plot [:1089] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
