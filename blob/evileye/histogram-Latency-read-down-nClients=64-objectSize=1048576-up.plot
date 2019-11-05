
set title "Histogram of upstream latency"
$histo << EOD
0,0
6,0
12,0
19,0
25,0
32,0
38,0
45,0
51,0
58,0
64,0
71,0
77,0
84,0
90,0
97,0
103,0
110,0
116,0
123,0
129,0
136,0
142,0
149,0
155,0
162,0
168,0
175,0
181,0
188,0
194,0
201,0
207,0
214,0
220,0
227,0
233,0
240,0
246,0
253,0
259,0
266,0
272,0
279,0
285,0
292,0
298,0
305,0
311,0
318,0
324,0
331,0
337,0
344,0
350,0
357,0
363,1
370,1
376,2
383,0
389,1
396,0
402,0
409,0
415,3
422,2
428,0
434,3
441,1
447,1
454,2
460,1
467,3
473,3
480,8
486,3
493,4
499,6
506,2
512,1
519,1
525,2
532,1
538,3
545,1
551,2
558,0
564,3
571,0
577,2
584,0
590,1
597,0
603,0
610,0
616,0
623,0
629,0
636,0
642,0
649,0
655,0
662,0
668,0
675,0
681,0
688,0
694,0
701,0
707,0
714,0
720,0
727,0
733,0
740,0
746,0
753,0
759,0
766,0
772,0
779,0
785,0
792,0
798,0
805,0
811,0
818,0
824,0
831,0
837,0
844,0
850,0
857,0
863,0
869,0
876,0
882,0
889,0
895,0
902,0
908,0
915,0
921,0
928,0
934,0
941,0
947,0
954,0
960,0
967,0
973,0
980,0
986,0
993,0
999,0
1006,0
1012,0
1019,0
1025,0
1032,0
1038,0
1045,0
1051,0
1058,0
1064,0
1071,0
1077,0
1084,0
1090,0
1097,0
1103,0
1110,0
1116,0
1123,0
1129,0
1136,0
1142,0
1149,0
1155,0
1162,0
1168,0
1175,0
1181,0
1188,0
1194,0
1201,0
1207,0
1214,0
1220,0
1227,0
1233,0
1240,0
1246,0
1253,0
1259,0
1266,0
1272,0
1279,0
1285,0
1292,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=1048576-up.png"
plot [:1292] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

