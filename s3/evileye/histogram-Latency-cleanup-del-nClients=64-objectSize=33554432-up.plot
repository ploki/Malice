
set title "Histogram of upstream latency"
$histo << EOD
0,0
80,0
160,0
241,0
321,0
402,0
482,0
562,0
643,0
723,0
804,0
884,0
964,0
1045,0
1125,0
1206,0
1286,0
1366,0
1447,0
1527,0
1608,0
1688,0
1768,0
1849,0
1929,0
2010,0
2090,0
2170,0
2251,0
2331,0
2412,0
2492,0
2572,0
2653,0
2733,0
2814,0
2894,0
2974,0
3055,0
3135,0
3216,0
3296,0
3376,0
3457,0
3537,0
3618,0
3698,0
3778,0
3859,0
3939,0
4020,0
4100,0
4180,0
4261,0
4341,0
4422,0
4502,0
4582,0
4663,0
4743,0
4824,0
4904,0
4984,0
5065,0
5145,0
5226,0
5306,0
5386,0
5467,0
5547,0
5628,0
5708,0
5788,0
5869,0
5949,0
6030,0
6110,0
6190,0
6271,0
6351,0
6432,0
6512,0
6592,0
6673,0
6753,0
6834,0
6914,0
6994,0
7075,0
7155,0
7236,0
7316,0
7396,0
7477,0
7557,0
7638,0
7718,1
7798,1
7879,0
7959,1
8040,0
8120,1
8201,0
8281,0
8361,0
8442,0
8522,0
8603,0
8683,0
8763,0
8844,0
8924,0
9005,0
9085,0
9165,1
9246,0
9326,0
9407,2
9487,1
9567,0
9648,1
9728,0
9809,1
9889,2
9969,0
10050,0
10130,2
10211,0
10291,0
10371,0
10452,0
10532,0
10613,0
10693,2
10773,0
10854,1
10934,1
11015,0
11095,0
11175,3
11256,1
11336,2
11417,1
11497,2
11577,0
11658,0
11738,3
11819,0
11899,0
11979,0
12060,1
12140,0
12221,0
12301,0
12381,0
12462,1
12542,0
12623,0
12703,1
12783,1
12864,0
12944,0
13025,0
13105,0
13185,0
13266,0
13346,0
13427,0
13507,0
13587,0
13668,0
13748,0
13829,0
13909,0
13989,0
14070,0
14150,0
14231,0
14311,0
14391,0
14472,0
14552,0
14633,0
14713,0
14793,0
14874,0
14954,0
15035,0
15115,0
15195,0
15276,0
15356,0
15437,0
15517,0
15597,0
15678,0
15758,0
15839,0
15919,0
16000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=33554432-up.png"
plot [:16000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

