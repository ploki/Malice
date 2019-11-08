
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
5386,1
5467,0
5547,0
5628,0
5708,1
5788,2
5869,0
5949,1
6030,0
6110,1
6190,0
6271,0
6351,1
6432,0
6512,0
6592,1
6673,1
6753,1
6834,1
6914,1
6994,0
7075,3
7155,1
7236,2
7316,3
7396,2
7477,0
7557,2
7638,3
7718,1
7798,4
7879,3
7959,5
8040,3
8120,3
8201,7
8281,7
8361,8
8442,8
8522,12
8603,10
8683,5
8763,11
8844,6
8924,11
9005,17
9085,26
9165,26
9246,30
9326,55
9407,37
9487,25
9567,41
9648,25
9728,25
9809,8
9889,15
9969,15
10050,10
10130,11
10211,10
10291,10
10371,9
10452,10
10532,9
10613,6
10693,3
10773,2
10854,3
10934,7
11015,6
11095,7
11175,3
11256,3
11336,2
11417,3
11497,1
11577,1
11658,4
11738,0
11819,1
11899,0
11979,2
12060,1
12140,2
12221,0
12301,2
12381,0
12462,1
12542,1
12623,0
12703,0
12783,0
12864,0
12944,1
13025,0
13105,0
13185,1
13266,1
13346,0
13427,1
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
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=33554432-down.png"
plot [:16000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

