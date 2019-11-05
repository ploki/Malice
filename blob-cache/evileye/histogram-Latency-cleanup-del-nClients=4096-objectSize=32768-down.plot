
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
1286,1
1447,0
1608,2
1768,0
1929,6
2090,3
2251,4
2412,4
2572,8
2733,3
2894,7
3055,11
3216,11
3376,19
3537,15
3698,16
3859,12
4020,17
4180,24
4341,21
4502,21
4663,16
4824,20
4984,24
5145,25
5306,24
5467,29
5628,33
5788,25
5949,43
6110,34
6271,35
6432,29
6592,42
6753,39
6914,40
7075,32
7236,57
7396,61
7557,37
7718,36
7879,37
8040,36
8201,42
8361,51
8522,26
8683,48
8844,26
9005,41
9165,32
9326,46
9487,35
9648,39
9809,41
9969,37
10130,34
10291,30
10452,32
10613,44
10773,39
10934,33
11095,32
11256,26
11417,30
11577,20
11738,29
11899,31
12060,27
12221,26
12381,22
12542,26
12703,27
12864,20
13025,24
13185,19
13346,19
13507,22
13668,19
13829,20
13989,19
14150,21
14311,8
14472,13
14633,14
14793,16
14954,5
15115,14
15276,12
15437,15
15597,14
15758,12
15919,10
16080,3
16241,5
16402,8
16562,8
16723,2
16884,7
17045,4
17206,3
17366,9
17527,2
17688,5
17849,5
18010,3
18170,2
18331,1
18492,3
18653,3
18814,3
18974,6
19135,1
19296,5
19457,2
19618,1
19778,4
19939,1
20100,1
20261,3
20422,0
20582,0
20743,2
20904,0
21065,0
21226,0
21386,0
21547,0
21708,0
21869,0
22030,2
22190,0
22351,2
22512,0
22673,0
22834,0
22994,0
23155,0
23316,1
23477,0
23638,0
23798,0
23959,0
24120,1
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

