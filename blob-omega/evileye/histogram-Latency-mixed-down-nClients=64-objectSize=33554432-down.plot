
set title "Histogram of downstream latency"
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
6110,1
6190,0
6271,0
6351,0
6432,0
6512,0
6592,0
6673,0
6753,0
6834,0
6914,1
6994,1
7075,0
7155,0
7236,1
7316,0
7396,0
7477,1
7557,0
7638,0
7718,0
7798,2
7879,1
7959,2
8040,5
8120,3
8201,5
8281,2
8361,6
8442,6
8522,10
8603,11
8683,10
8763,12
8844,18
8924,18
9005,20
9085,13
9165,19
9246,17
9326,9
9407,12
9487,13
9567,22
9648,18
9728,14
9809,13
9889,10
9969,5
10050,11
10130,7
10211,5
10291,3
10371,3
10452,2
10532,5
10613,3
10693,4
10773,1
10854,2
10934,1
11015,0
11095,2
11175,0
11256,1
11336,1
11417,0
11497,0
11577,0
11658,1
11738,0
11819,0
11899,0
11979,0
12060,0
12140,0
12221,0
12301,0
12381,0
12462,0
12542,0
12623,0
12703,0
12783,0
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
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=33554432-down.png"
plot [:16000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
