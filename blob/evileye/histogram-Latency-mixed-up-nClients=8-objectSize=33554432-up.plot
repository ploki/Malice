
set title "Histogram of upstream latency"
$histo << EOD
0,0
8,0
17,0
25,0
34,0
43,0
51,0
60,0
69,0
77,0
86,0
94,0
103,0
112,0
120,0
129,0
138,0
146,0
155,0
164,0
172,0
181,0
189,0
198,0
207,0
215,0
224,0
233,0
241,0
250,0
258,0
267,0
276,0
284,0
293,0
302,0
310,0
319,0
328,0
336,0
345,0
353,0
362,0
371,0
379,0
388,0
397,0
405,0
414,0
423,0
431,0
440,0
448,0
457,0
466,0
474,0
483,0
492,0
500,0
509,0
517,0
526,0
535,0
543,0
552,0
561,0
569,0
578,0
587,0
595,0
604,0
612,0
621,0
630,0
638,0
647,0
656,0
664,0
673,0
682,0
690,0
699,0
707,0
716,0
725,0
733,0
742,0
751,0
759,0
768,0
776,0
785,0
794,0
802,0
811,0
820,0
828,0
837,0
846,0
854,0
863,0
871,0
880,0
889,0
897,0
906,0
915,0
923,0
932,1
941,0
949,0
958,1
966,0
975,0
984,0
992,0
1001,0
1010,1
1018,0
1027,0
1035,0
1044,0
1053,0
1061,0
1070,0
1079,0
1087,1
1096,1
1105,2
1113,1
1122,1
1130,3
1139,3
1148,3
1156,2
1165,2
1174,2
1182,4
1191,7
1200,6
1208,9
1217,3
1225,6
1234,4
1243,12
1251,5
1260,4
1269,7
1277,9
1286,6
1294,10
1303,8
1312,13
1320,8
1329,5
1338,8
1346,12
1355,13
1364,9
1372,5
1381,6
1389,14
1398,10
1407,12
1415,6
1424,5
1433,13
1441,2
1450,6
1459,4
1467,8
1476,6
1484,6
1493,3
1502,5
1510,4
1519,3
1528,2
1536,2
1545,2
1553,1
1562,4
1571,1
1579,2
1588,2
1597,1
1605,0
1614,0
1623,0
1631,1
1640,1
1648,0
1657,0
1666,1
1674,0
1683,0
1692,0
1700,0
1709,1
1717,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=33554432-up.png"
plot [:1718] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

