
set title "Histogram of downstream latency"
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
2356,1
2387,8
2419,7
2451,5
2483,0
2515,9
2547,19
2578,17
2610,6
2642,9
2674,10
2706,17
2738,7
2770,34
2801,31
2833,28
2865,40
2897,46
2929,74
2961,78
2992,119
3024,121
3056,144
3088,157
3120,164
3152,193
3183,172
3215,282
3247,327
3279,367
3311,445
3343,476
3374,575
3406,643
3438,540
3470,604
3502,548
3534,548
3565,564
3597,551
3629,593
3661,669
3693,551
3725,495
3757,433
3788,367
3820,405
3852,301
3884,279
3916,274
3948,238
3979,194
4011,196
4043,205
4075,124
4107,127
4139,102
4170,73
4202,93
4234,61
4266,26
4298,24
4330,29
4361,16
4393,17
4425,6
4457,6
4489,6
4521,7
4553,11
4584,4
4616,2
4648,1
4680,2
4712,2
4744,3
4775,2
4807,0
4839,1
4871,1
4903,0
4935,0
4966,0
4998,1
5030,0
5062,0
5094,0
5126,1
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=1048576-down.png"
plot [:6336] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

