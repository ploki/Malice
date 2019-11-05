
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
4904,2
4984,0
5065,0
5145,0
5226,0
5306,0
5386,2
5467,2
5547,0
5628,1
5708,1
5788,0
5869,3
5949,0
6030,0
6110,1
6190,3
6271,2
6351,2
6432,1
6512,4
6592,0
6673,0
6753,2
6834,2
6914,2
6994,2
7075,7
7155,8
7236,8
7316,8
7396,8
7477,7
7557,16
7638,16
7718,14
7798,19
7879,13
7959,15
8040,25
8120,39
8201,34
8281,43
8361,42
8442,42
8522,51
8603,43
8683,47
8763,52
8844,34
8924,43
9005,63
9085,72
9165,72
9246,50
9326,61
9407,68
9487,65
9567,74
9648,58
9728,68
9809,58
9889,70
9969,59
10050,52
10130,43
10211,56
10291,37
10371,31
10452,37
10532,30
10613,34
10693,24
10773,30
10854,32
10934,18
11015,20
11095,13
11175,10
11256,10
11336,9
11417,5
11497,2
11577,5
11658,1
11738,4
11819,3
11899,2
11979,2
12060,1
12140,0
12221,1
12301,1
12381,1
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
set output "evileye/histogram-Latency-populate-up-nClients=64-objectSize=33554432-up.png"
plot [:16000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

