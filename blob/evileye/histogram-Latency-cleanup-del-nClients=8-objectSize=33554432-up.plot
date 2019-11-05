
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
932,0
941,0
949,0
958,0
966,0
975,0
984,0
992,0
1001,0
1010,0
1018,0
1027,0
1035,0
1044,0
1053,0
1061,0
1070,0
1079,0
1087,0
1096,0
1105,0
1113,0
1122,0
1130,0
1139,0
1148,0
1156,0
1165,0
1174,0
1182,0
1191,1
1200,0
1208,0
1217,0
1225,0
1234,0
1243,0
1251,0
1260,0
1269,0
1277,1
1286,0
1294,0
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
1459,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=33554432-up.png"
plot [:1718] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

