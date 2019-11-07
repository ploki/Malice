
set title "Histogram of upstream latency"
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
552,1
562,0
572,0
582,0
592,0
603,0
613,0
623,1
633,0
643,1
653,0
663,1
673,1
683,1
693,2
703,3
713,2
723,0
733,2
743,5
753,2
763,4
773,3
783,6
793,5
804,1
814,0
824,2
834,3
844,6
854,5
864,10
874,10
884,11
894,10
904,15
914,21
924,19
934,27
944,23
954,14
964,27
974,31
984,29
994,44
1005,38
1015,33
1025,36
1035,57
1045,44
1055,58
1065,60
1075,74
1085,73
1095,67
1105,71
1115,73
1125,66
1135,79
1145,54
1155,69
1165,56
1175,67
1185,53
1195,51
1206,58
1216,54
1226,51
1236,38
1246,41
1256,55
1266,44
1276,35
1286,29
1296,18
1306,20
1316,25
1326,30
1336,19
1346,12
1356,12
1366,6
1376,6
1386,7
1396,9
1407,1
1417,7
1427,8
1437,2
1447,4
1457,1
1467,4
1477,2
1487,1
1497,1
1507,0
1517,1
1527,1
1537,0
1547,0
1557,1
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
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=33554432-up.png"
plot [:2000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

