
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
693,0
703,0
713,0
723,0
733,0
743,0
753,0
763,0
773,0
783,0
793,0
804,0
814,0
824,0
834,0
844,0
854,0
864,0
874,0
884,0
894,0
904,2
914,0
924,1
934,1
944,1
954,0
964,1
974,2
984,3
994,1
1005,3
1015,0
1025,4
1035,1
1045,1
1055,3
1065,3
1075,4
1085,7
1095,6
1105,6
1115,8
1125,7
1135,6
1145,8
1155,10
1165,8
1175,11
1185,18
1195,11
1206,14
1216,11
1226,10
1236,15
1246,9
1256,8
1266,20
1276,6
1286,8
1296,6
1306,10
1316,6
1326,7
1336,9
1346,7
1356,5
1366,4
1376,5
1386,1
1396,6
1407,4
1417,4
1427,3
1437,3
1447,3
1457,3
1467,0
1477,2
1487,0
1497,0
1507,0
1517,0
1527,1
1537,1
1547,1
1557,0
1567,0
1577,0
1587,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=33554432-down.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

