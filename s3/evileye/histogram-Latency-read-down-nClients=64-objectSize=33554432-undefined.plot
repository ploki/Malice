
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
6551,0
6622,0
6693,0
6765,0
6836,0
6907,0
6978,0
7049,0
7121,0
7192,0
7263,0
7334,0
7405,0
7477,0
7548,2
7619,1
7690,1
7762,2
7833,3
7904,2
7975,8
8046,2
8118,7
8189,10
8260,12
8331,17
8402,24
8474,32
8545,43
8616,47
8687,58
8758,61
8830,53
8901,57
8972,35
9043,34
9115,35
9186,21
9257,23
9328,10
9399,11
9471,7
9542,4
9613,4
9684,9
9755,7
9827,3
9898,7
9969,2
10040,3
10111,1
10183,0
10254,3
10325,2
10396,0
10468,0
10539,1
10610,0
10681,0
10752,0
10824,0
10895,0
10966,0
11037,0
11108,0
11180,0
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
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=33554432-undefined.png"
plot [:14171] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

