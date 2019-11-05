
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
623,0
633,0
643,0
653,0
663,0
673,0
683,0
693,1
703,0
713,0
723,2
733,1
743,0
753,0
763,0
773,2
783,0
793,1
804,1
814,3
824,1
834,0
844,2
854,5
864,4
874,6
884,4
894,7
904,13
914,14
924,6
934,7
944,10
954,13
964,12
974,14
984,18
994,15
1005,11
1015,19
1025,17
1035,17
1045,12
1055,7
1065,9
1075,13
1085,11
1095,7
1105,8
1115,5
1125,4
1135,5
1145,4
1155,8
1165,4
1175,2
1185,3
1195,4
1206,3
1216,2
1226,1
1236,1
1246,3
1256,3
1266,0
1276,0
1286,0
1296,1
1306,0
1316,1
1326,0
1336,0
1346,0
1356,0
1366,0
1376,0
1386,0
1396,0
1407,0
1417,0
1427,0
1437,0
1447,0
1457,0
1467,1
1477,0
1487,0
1497,0
1507,0
1517,0
1527,0
1537,0
1547,0
1557,0
1567,0
1577,0
1587,0
1597,0
1608,0
1618,0
1628,0
1638,0
1648,0
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
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=33554432-down.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

