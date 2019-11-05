
set title "Histogram of upstream latency"
$histo << EOD
0,0
31,0
63,0
95,0
127,0
159,0
191,0
222,0
254,0
286,0
318,0
350,0
382,0
413,0
445,0
477,0
509,0
541,0
573,0
604,0
636,0
668,0
700,0
732,0
764,0
795,0
827,0
859,0
891,0
923,0
955,0
987,0
1018,0
1050,0
1082,0
1114,0
1146,0
1178,0
1209,0
1241,0
1273,0
1305,0
1337,0
1369,0
1400,0
1432,0
1464,0
1496,0
1528,0
1560,0
1591,0
1623,0
1655,0
1687,0
1719,0
1751,0
1782,0
1814,0
1846,0
1878,0
1910,0
1942,0
1974,0
2005,0
2037,0
2069,0
2101,0
2133,0
2165,0
2196,0
2228,0
2260,0
2292,0
2324,0
2356,0
2387,0
2419,0
2451,0
2483,0
2515,0
2547,0
2578,0
2610,0
2642,0
2674,0
2706,0
2738,0
2770,0
2801,2
2833,0
2865,2
2897,4
2929,1
2961,1
2992,4
3024,2
3056,1
3088,1
3120,5
3152,3
3183,2
3215,2
3247,5
3279,6
3311,2
3343,5
3374,2
3406,4
3438,1
3470,8
3502,6
3534,2
3565,1
3597,5
3629,4
3661,5
3693,2
3725,6
3757,8
3788,8
3820,4
3852,1
3884,6
3916,2
3948,8
3979,7
4011,6
4043,3
4075,15
4107,14
4139,19
4170,18
4202,16
4234,11
4266,18
4298,1
4330,8
4361,4
4393,10
4425,4
4457,0
4489,0
4521,2
4553,0
4584,0
4616,0
4648,0
4680,0
4712,0
4744,0
4775,0
4807,0
4839,0
4871,0
4903,0
4935,0
4966,0
4998,0
5030,0
5062,0
5094,0
5126,0
5157,0
5189,0
5221,0
5253,0
5285,0
5317,0
5348,0
5380,0
5412,0
5444,0
5476,0
5508,0
5540,0
5571,0
5603,0
5635,0
5667,0
5699,0
5731,0
5762,0
5794,0
5826,0
5858,0
5890,0
5922,0
5953,0
5985,0
6017,0
6049,0
6081,0
6113,0
6144,0
6176,0
6208,0
6240,0
6272,0
6304,0
6336,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=1048576-up.png"
plot [:6336] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

