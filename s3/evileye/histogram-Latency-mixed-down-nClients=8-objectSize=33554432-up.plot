
set title "Histogram of upstream latency"
$histo << EOD
0,0
10,0
21,0
32,0
42,0
53,0
64,0
75,0
85,0
96,0
107,0
118,0
128,0
139,0
150,0
161,0
171,0
182,0
193,0
204,0
214,0
225,0
236,0
246,0
257,0
268,0
279,0
289,0
300,0
311,0
322,0
332,0
343,0
354,0
365,0
375,0
386,0
397,0
408,0
418,0
429,0
440,0
451,0
461,0
472,0
483,0
493,0
504,0
515,0
526,0
536,0
547,0
558,0
569,0
579,0
590,0
601,0
612,0
622,0
633,0
644,0
655,0
665,0
676,0
687,0
698,0
708,0
719,0
730,0
740,0
751,0
762,0
773,0
783,0
794,0
805,0
816,0
826,0
837,0
848,0
859,0
869,0
880,0
891,0
902,0
912,0
923,0
934,0
945,0
955,0
966,0
977,0
987,0
998,0
1009,0
1020,0
1030,0
1041,1
1052,1
1063,0
1073,2
1084,0
1095,1
1106,0
1116,0
1127,1
1138,2
1149,3
1159,2
1170,0
1181,1
1191,3
1202,3
1213,6
1224,3
1234,4
1245,5
1256,9
1267,8
1277,5
1288,6
1299,13
1310,8
1320,7
1331,5
1342,9
1353,11
1363,14
1374,7
1385,11
1396,11
1406,14
1417,9
1428,2
1438,8
1449,9
1460,10
1471,9
1481,5
1492,6
1503,15
1514,6
1524,3
1535,5
1546,9
1557,6
1567,5
1578,5
1589,2
1600,4
1610,4
1621,7
1632,5
1643,1
1653,3
1664,3
1675,1
1685,0
1696,0
1707,3
1718,2
1728,0
1739,1
1750,1
1761,1
1771,4
1782,1
1793,0
1804,0
1814,2
1825,0
1836,0
1847,0
1857,1
1868,0
1879,0
1890,0
1900,0
1911,0
1922,0
1932,0
1943,0
1954,0
1965,0
1975,0
1986,0
1997,1
2008,0
2018,0
2029,0
2040,0
2051,0
2061,0
2072,0
2083,0
2094,0
2104,1
2115,0
2126,0
2137,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=33554432-up.png"
plot [:2137] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
