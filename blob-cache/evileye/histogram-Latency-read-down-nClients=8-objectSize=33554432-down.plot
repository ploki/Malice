
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
613,1
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
733,1
743,1
753,1
763,3
773,1
783,2
793,0
804,0
814,2
824,1
834,2
844,0
854,2
864,1
874,3
884,3
894,5
904,4
914,7
924,7
934,3
944,4
954,10
964,9
974,13
984,11
994,17
1005,16
1015,18
1025,25
1035,20
1045,26
1055,21
1065,22
1075,34
1085,26
1095,20
1105,33
1115,23
1125,17
1135,24
1145,28
1155,21
1165,24
1175,33
1185,21
1195,10
1206,20
1216,15
1226,14
1236,12
1246,12
1256,9
1266,6
1276,6
1286,6
1296,11
1306,4
1316,3
1326,5
1336,6
1346,2
1356,1
1366,0
1376,0
1386,0
1396,0
1407,2
1417,0
1427,0
1437,0
1447,0
1457,0
1467,0
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
2000,2
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=8-objectSize=33554432-down.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
