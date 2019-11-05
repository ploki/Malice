
set title "Histogram of downstream latency"
$histo << EOD
0,25
160,222
321,169
482,156
643,161
804,163
964,139
1125,182
1286,163
1447,191
1608,254
1768,296
1929,336
2090,371
2251,424
2412,494
2572,559
2733,696
2894,734
3055,734
3216,790
3376,692
3537,646
3698,752
3859,779
4020,743
4180,798
4341,1009
4502,1156
4663,1353
4824,1488
4984,1500
5145,1428
5306,1217
5467,1088
5628,1005
5788,956
5949,881
6110,848
6271,838
6432,640
6592,650
6753,611
6914,526
7075,467
7236,474
7396,508
7557,402
7718,399
7879,386
8040,392
8201,342
8361,235
8522,223
8683,182
8844,141
9005,118
9165,109
9326,114
9487,95
9648,92
9809,64
9969,52
10130,67
10291,69
10452,68
10613,47
10773,41
10934,39
11095,28
11256,24
11417,30
11577,22
11738,26
11899,17
12060,10
12221,16
12381,18
12542,22
12703,14
12864,8
13025,6
13185,8
13346,4
13507,4
13668,2
13829,1
13989,8
14150,4
14311,0
14472,2
14633,1
14793,2
14954,0
15115,0
15276,1
15437,0
15597,0
15758,0
15919,0
16080,0
16241,0
16402,0
16562,0
16723,0
16884,0
17045,0
17206,0
17366,0
17527,0
17688,0
17849,0
18010,0
18170,0
18331,0
18492,0
18653,0
18814,5
18974,10
19135,0
19296,2
19457,0
19618,0
19778,0
19939,0
20100,0
20261,0
20422,0
20582,0
20743,0
20904,0
21065,0
21226,0
21386,0
21547,0
21708,0
21869,0
22030,0
22190,0
22351,0
22512,0
22673,0
22834,0
22994,0
23155,0
23316,0
23477,0
23638,0
23798,0
23959,0
24120,0
24281,0
24442,0
24603,0
24763,0
24924,0
25085,0
25246,0
25407,0
25567,0
25728,0
25889,0
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
32000,17
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=4096-objectSize=32768-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

