
set title "Histogram of undefinedstream latency"
$histo << EOD
0,0
71,0
142,0
213,0
284,0
356,0
427,0
498,0
569,0
640,0
712,0
783,0
854,0
925,0
996,0
1068,0
1139,0
1210,0
1281,0
1353,0
1424,0
1495,0
1566,0
1637,0
1709,0
1780,0
1851,0
1922,0
1993,0
2065,0
2136,0
2207,0
2278,0
2349,0
2421,0
2492,0
2563,0
2634,0
2706,0
2777,0
2848,0
2919,0
2990,0
3062,0
3133,0
3204,0
3275,0
3346,0
3418,0
3489,0
3560,0
3631,0
3702,0
3774,0
3845,0
3916,0
3987,0
4059,0
4130,0
4201,0
4272,0
4343,0
4415,0
4486,0
4557,0
4628,0
4699,0
4771,0
4842,0
4913,0
4984,0
5055,0
5127,0
5198,0
5269,0
5340,0
5412,0
5483,0
5554,0
5625,0
5696,0
5768,0
5839,0
5910,0
5981,0
6052,0
6124,0
6195,0
6266,0
6337,0
6408,0
6480,0
6551,2
6622,0
6693,0
6765,1
6836,0
6907,0
6978,0
7049,0
7121,0
7192,1
7263,0
7334,0
7405,0
7477,0
7548,0
7619,1
7690,0
7762,0
7833,0
7904,1
7975,0
8046,0
8118,0
8189,2
8260,0
8331,0
8402,0
8474,0
8545,0
8616,0
8687,0
8758,0
8830,0
8901,0
8972,0
9043,0
9115,0
9186,1
9257,0
9328,0
9399,0
9471,0
9542,1
9613,1
9684,1
9755,0
9827,3
9898,0
9969,1
10040,0
10111,0
10183,1
10254,2
10325,1
10396,6
10468,3
10539,3
10610,2
10681,0
10752,1
10824,0
10895,0
10966,0
11037,0
11108,0
11180,1
11251,0
11322,0
11393,0
11464,0
11536,0
11607,0
11678,0
11749,0
11821,0
11892,0
11963,0
12034,0
12105,0
12177,0
12248,0
12319,0
12390,0
12461,0
12533,0
12604,0
12675,0
12746,0
12817,0
12889,0
12960,0
13031,0
13102,0
13174,0
13245,0
13316,0
13387,0
13458,0
13530,0
13601,0
13672,0
13743,0
13814,0
13886,0
13957,0
14028,0
14099,0
14171,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=33554432-undefined.png"
plot [:14171] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

