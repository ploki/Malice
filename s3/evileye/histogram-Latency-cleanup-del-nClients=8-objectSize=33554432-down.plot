
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
844,1
854,0
864,0
874,0
884,0
894,1
904,0
914,0
924,0
934,0
944,0
954,0
964,0
974,0
984,0
994,0
1005,0
1015,0
1025,0
1035,0
1045,0
1055,1
1065,0
1075,0
1085,0
1095,1
1105,0
1115,0
1125,0
1135,0
1145,0
1155,0
1165,0
1175,0
1185,0
1195,0
1206,0
1216,0
1226,0
1236,0
1246,0
1256,0
1266,0
1276,0
1286,0
1296,0
1306,0
1316,0
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
2000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=33554432-down.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

