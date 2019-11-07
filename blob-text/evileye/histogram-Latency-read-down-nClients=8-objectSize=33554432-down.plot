
set title "Histogram of downstream latency"
$histo << EOD
0,0
10,0
20,0
30,0
40,0
50,0
60,0
70,0
80,0
90,0
100,0
110,0
120,0
130,0
140,0
150,0
160,0
170,0
180,0
190,0
201,0
211,0
221,0
231,0
241,0
251,0
261,0
271,0
281,0
291,0
301,0
311,0
321,0
331,0
341,0
351,0
361,0
371,0
381,0
391,0
402,0
412,0
422,0
432,0
442,0
452,0
462,0
472,0
482,0
492,0
502,0
512,0
522,0
532,0
542,0
552,0
562,0
572,0
582,0
592,0
603,0
613,0
623,1
633,0
643,0
653,0
663,0
673,0
683,0
693,0
703,0
713,2
723,0
733,0
743,0
753,1
763,0
773,1
783,0
793,0
804,0
814,0
824,2
834,0
844,0
854,1
864,0
874,0
884,0
894,1
904,0
914,1
924,1
934,0
944,4
954,4
964,3
974,3
984,3
994,6
1005,0
1015,1
1025,4
1035,1
1045,6
1055,5
1065,7
1075,4
1085,9
1095,3
1105,8
1115,6
1125,15
1135,8
1145,12
1155,12
1165,7
1175,5
1185,15
1195,17
1206,20
1216,10
1226,22
1236,18
1246,15
1256,19
1266,29
1276,17
1286,23
1296,21
1306,27
1316,17
1326,26
1336,17
1346,21
1356,13
1366,19
1376,12
1386,11
1396,9
1407,13
1417,10
1427,8
1437,7
1447,8
1457,5
1467,5
1477,3
1487,2
1497,7
1507,0
1517,3
1527,4
1537,3
1547,0
1557,1
1567,1
1577,1
1587,1
1597,1
1608,0
1618,0
1628,0
1638,0
1648,1
1658,0
1668,0
1678,0
1688,0
1698,0
1708,0
1718,0
1728,0
1738,0
1748,0
1758,0
1768,0
1778,0
1788,0
1798,0
1809,0
1819,0
1829,0
1839,0
1849,0
1859,0
1869,0
1879,0
1889,0
1899,0
1909,0
1919,0
1929,0
1939,0
1949,0
1959,0
1969,0
1979,0
1989,0
2000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=8-objectSize=33554432-down.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

