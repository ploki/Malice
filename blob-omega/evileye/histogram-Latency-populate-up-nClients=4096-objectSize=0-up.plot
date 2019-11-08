
set title "Histogram of upstream latency"
$histo << EOD
0,575
160,1326
321,721
482,972
643,1350
804,1646
964,1864
1125,2104
1286,2182
1447,2359
1608,2498
1768,2671
1929,2870
2090,3006
2251,3153
2412,3328
2572,3372
2733,3530
2894,3700
3055,3744
3216,3919
3376,4229
3537,4600
3698,4898
3859,5049
4020,5064
4180,5059
4341,5004
4502,5179
4663,5159
4824,5293
4984,5326
5145,5485
5306,5354
5467,5365
5628,5229
5788,5232
5949,5333
6110,5385
6271,5189
6432,5207
6592,5205
6753,5115
6914,5020
7075,4812
7236,4664
7396,4357
7557,4017
7718,3562
7879,3343
8040,2997
8201,2470
8361,2210
8522,2062
8683,1699
8844,1550
9005,1411
9165,1320
9326,1255
9487,1241
9648,1113
9809,951
9969,980
10130,886
10291,868
10452,799
10613,746
10773,601
10934,578
11095,566
11256,546
11417,500
11577,465
11738,458
11899,429
12060,375
12221,337
12381,309
12542,304
12703,216
12864,176
13025,153
13185,140
13346,123
13507,95
13668,107
13829,103
13989,75
14150,76
14311,82
14472,94
14633,90
14793,72
14954,66
15115,73
15276,50
15437,60
15597,41
15758,32
15919,35
16080,45
16241,28
16402,24
16562,28
16723,22
16884,23
17045,17
17206,14
17366,8
17527,7
17688,11
17849,5
18010,2
18170,1
18331,0
18492,0
18653,0
18814,1
18974,0
19135,0
19296,0
19457,0
19618,2
19778,0
19939,1
20100,0
20261,2
20422,0
20582,0
20743,0
20904,2
21065,1
21226,0
21386,2
21547,2
21708,4
21869,1
22030,1
22190,3
22351,3
22512,2
22673,2
22834,2
22994,3
23155,2
23316,2
23477,0
23638,2
23798,2
23959,3
24120,3
24281,3
24442,5
24603,1
24763,0
24924,2
25085,1
25246,0
25407,0
25567,0
25728,0
25889,1
26050,0
26211,0
26371,0
26532,0
26693,0
26854,0
27015,0
27175,0
27336,0
27497,0
27658,0
27819,0
27979,0
28140,0
28301,0
28462,0
28623,0
28783,0
28944,0
29105,0
29266,0
29427,0
29587,0
29748,0
29909,0
30070,0
30231,0
30391,0
30552,0
30713,0
30874,0
31035,0
31195,0
31356,0
31517,0
31678,0
31839,0
32000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=4096-objectSize=0-up.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
