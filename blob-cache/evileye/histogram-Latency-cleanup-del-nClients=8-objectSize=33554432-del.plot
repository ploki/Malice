
set title "Histogram of delstream latency"
$histo << EOD
0,0
11,380
22,1356
34,373
45,43
56,2
68,2
79,1
90,1
102,0
113,1
124,0
136,1
147,0
158,0
170,0
181,0
192,0
204,0
215,0
226,0
238,0
249,0
260,0
272,0
283,0
294,0
306,0
317,0
328,0
340,0
351,0
362,0
374,0
385,0
396,0
408,0
419,0
430,0
442,0
453,0
464,0
476,0
487,0
498,0
510,0
521,0
532,0
544,0
555,0
566,0
578,0
589,0
600,0
612,0
623,0
634,0
646,0
657,0
668,0
680,0
691,0
702,0
714,0
725,0
736,0
748,0
759,0
770,0
782,0
793,0
804,0
816,0
827,0
838,0
850,0
861,0
872,0
884,0
895,0
906,0
918,0
929,0
940,0
952,0
963,0
974,0
986,0
997,0
1008,0
1020,0
1031,0
1042,0
1054,0
1065,0
1076,0
1088,0
1099,0
1110,0
1122,0
1133,0
1145,0
1156,0
1167,0
1179,0
1190,0
1201,0
1213,0
1224,0
1235,0
1247,0
1258,0
1269,0
1281,0
1292,0
1303,0
1315,0
1326,0
1337,0
1349,0
1360,0
1371,0
1383,0
1394,0
1405,0
1417,0
1428,0
1439,0
1451,0
1462,0
1473,0
1485,0
1496,0
1507,0
1519,0
1530,0
1541,0
1553,0
1564,0
1575,0
1587,0
1598,0
1609,0
1621,0
1632,0
1643,0
1655,0
1666,0
1677,0
1689,0
1700,0
1711,0
1723,0
1734,0
1745,0
1757,0
1768,0
1779,0
1791,0
1802,0
1813,0
1825,0
1836,0
1847,0
1859,0
1870,0
1881,0
1893,0
1904,0
1915,0
1927,0
1938,0
1949,0
1961,0
1972,0
1983,0
1995,0
2006,0
2017,0
2029,0
2040,0
2051,0
2063,0
2074,0
2085,0
2097,0
2108,0
2119,0
2131,0
2142,0
2153,0
2165,0
2176,0
2187,0
2199,0
2210,0
2221,0
2233,0
2244,0
2256,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=33554432-del.png"
plot [:2256] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

