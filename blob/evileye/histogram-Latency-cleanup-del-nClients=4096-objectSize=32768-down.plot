
set title "Histogram of downstream latency"
$histo << EOD
0,0
160,0
321,0
482,0
643,0
804,0
964,0
1125,0
1286,0
1447,0
1608,0
1768,0
1929,0
2090,0
2251,0
2412,0
2572,0
2733,0
2894,0
3055,0
3216,0
3376,0
3537,0
3698,0
3859,0
4020,0
4180,0
4341,2
4502,0
4663,0
4824,2
4984,4
5145,1
5306,2
5467,1
5628,0
5788,0
5949,3
6110,4
6271,3
6432,5
6592,4
6753,2
6914,3
7075,5
7236,3
7396,3
7557,1
7718,3
7879,4
8040,6
8201,1
8361,8
8522,8
8683,7
8844,11
9005,5
9165,6
9326,6
9487,10
9648,13
9809,9
9969,10
10130,7
10291,16
10452,12
10613,13
10773,9
10934,20
11095,7
11256,19
11417,13
11577,19
11738,14
11899,14
12060,23
12221,19
12381,19
12542,19
12703,13
12864,17
13025,28
13185,21
13346,22
13507,24
13668,19
13829,28
13989,33
14150,29
14311,28
14472,32
14633,35
14793,26
14954,34
15115,25
15276,42
15437,34
15597,17
15758,31
15919,32
16080,38
16241,23
16402,37
16562,28
16723,29
16884,25
17045,36
17206,25
17366,28
17527,28
17688,22
17849,28
18010,31
18170,23
18331,34
18492,19
18653,25
18814,31
18974,37
19135,27
19296,28
19457,32
19618,19
19778,24
19939,31
20100,37
20261,20
20422,24
20582,21
20743,21
20904,20
21065,14
21226,22
21386,14
21547,25
21708,26
21869,12
22030,20
22190,17
22351,18
22512,13
22673,16
22834,15
22994,18
23155,13
23316,12
23477,15
23638,22
23798,16
23959,20
24120,8
24281,11
24442,10
24603,12
24763,11
24924,5
25085,11
25246,13
25407,9
25567,5
25728,8
25889,14
26050,9
26211,11
26371,5
26532,8
26693,11
26854,8
27015,12
27175,7
27336,4
27497,9
27658,1
27819,4
27979,5
28140,2
28301,9
28462,5
28623,3
28783,3
28944,2
29105,6
29266,0
29427,5
29587,4
29748,4
29909,1
30070,3
30231,2
30391,1
30552,2
30713,0
30874,2
31035,1
31195,5
31356,2
31517,0
31678,2
31839,1
32000,21
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=4096-objectSize=32768-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

