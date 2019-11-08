
set title "Histogram of downstream latency"
$histo << EOD
0,0
160,0
321,0
482,0
643,1
804,3
964,4
1125,4
1286,8
1447,6
1608,1
1768,15
1929,12
2090,18
2251,7
2412,13
2572,16
2733,26
2894,15
3055,27
3216,21
3376,30
3537,31
3698,42
3859,50
4020,43
4180,45
4341,48
4502,33
4663,42
4824,42
4984,45
5145,49
5306,44
5467,54
5628,48
5788,49
5949,47
6110,57
6271,54
6432,48
6592,39
6753,34
6914,42
7075,52
7236,32
7396,37
7557,34
7718,36
7879,31
8040,27
8201,27
8361,21
8522,16
8683,11
8844,11
9005,16
9165,8
9326,10
9487,13
9648,4
9809,4
9969,7
10130,2
10291,7
10452,6
10613,2
10773,4
10934,3
11095,1
11256,2
11417,4
11577,1
11738,1
11899,4
12060,0
12221,0
12381,1
12542,0
12703,1
12864,0
13025,0
13185,0
13346,0
13507,1
13668,1
13829,1
13989,2
14150,0
14311,1
14472,2
14633,0
14793,0
14954,0
15115,0
15276,0
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
18814,0
18974,0
19135,0
19296,0
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
32000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=4096-objectSize=32768-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
