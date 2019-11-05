
set title "Histogram of downstream latency"
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
699,1
707,0
716,1
725,1
733,1
742,0
751,0
759,0
768,0
776,2
785,0
794,1
802,1
811,3
820,1
828,0
837,1
846,1
854,4
863,5
871,3
880,3
889,9
897,9
906,8
915,11
923,7
932,6
941,6
949,9
958,13
966,12
975,7
984,18
992,14
1001,11
1010,10
1018,17
1027,14
1035,17
1044,9
1053,7
1061,6
1070,11
1079,10
1087,8
1096,8
1105,6
1113,4
1122,4
1130,2
1139,6
1148,6
1156,5
1165,4
1174,2
1182,0
1191,5
1200,4
1208,1
1217,2
1225,0
1234,2
1243,2
1251,2
1260,2
1269,0
1277,0
1286,0
1294,1
1303,0
1312,1
1320,0
1329,0
1338,0
1346,0
1355,0
1364,0
1372,0
1381,0
1389,0
1398,0
1407,0
1415,0
1424,0
1433,0
1441,0
1450,0
1459,1
1467,0
1476,0
1484,0
1493,0
1502,0
1510,0
1519,0
1528,0
1536,0
1545,0
1553,0
1562,0
1571,0
1579,0
1588,0
1597,0
1605,0
1614,0
1623,0
1631,0
1640,0
1648,0
1657,0
1666,0
1674,0
1683,0
1692,0
1700,0
1709,0
1717,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=33554432-down.png"
plot [:1718] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

