
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
676,2
687,1
698,1
708,0
719,3
730,1
740,4
751,1
762,2
773,2
783,1
794,2
805,2
816,4
826,6
837,5
848,9
859,6
869,9
880,12
891,8
902,8
912,12
923,12
934,11
945,8
955,12
966,21
977,22
987,13
998,25
1009,25
1020,25
1030,20
1041,28
1052,25
1063,21
1073,40
1084,29
1095,29
1106,51
1116,30
1127,44
1138,48
1149,63
1159,64
1170,61
1181,67
1191,71
1202,73
1213,61
1224,70
1234,68
1245,48
1256,70
1267,72
1277,51
1288,49
1299,55
1310,55
1320,47
1331,41
1342,32
1353,27
1363,17
1374,33
1385,19
1396,20
1406,22
1417,12
1428,19
1438,11
1449,8
1460,13
1471,9
1481,10
1492,7
1503,4
1514,2
1524,3
1535,3
1546,1
1557,1
1567,0
1578,1
1589,0
1600,0
1610,0
1621,0
1632,0
1643,0
1653,0
1664,0
1675,0
1685,0
1696,2
1707,0
1718,0
1728,2
1739,1
1750,0
1761,2
1771,0
1782,0
1793,1
1804,0
1814,0
1825,0
1836,0
1847,0
1857,0
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
1997,0
2008,0
2018,0
2029,0
2040,0
2051,0
2061,0
2072,0
2083,0
2094,0
2104,0
2115,0
2126,0
2137,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=33554432-up.png"
plot [:2137] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
