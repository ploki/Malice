
set title "Histogram of upstream latency"
$histo << EOD
0,0
160,1
321,0
482,0
643,2
804,1
964,3
1125,1
1286,0
1447,4
1608,4
1768,5
1929,8
2090,8
2251,10
2412,12
2572,16
2733,15
2894,20
3055,21
3216,25
3376,25
3537,38
3698,36
3859,36
4020,47
4180,31
4341,48
4502,37
4663,52
4824,38
4984,63
5145,49
5306,54
5467,56
5628,54
5788,58
5949,40
6110,55
6271,39
6432,45
6592,51
6753,42
6914,38
7075,44
7236,42
7396,34
7557,34
7718,33
7879,29
8040,29
8201,30
8361,30
8522,19
8683,21
8844,17
9005,18
9165,19
9326,22
9487,22
9648,12
9809,6
9969,4
10130,9
10291,5
10452,10
10613,10
10773,9
10934,9
11095,12
11256,10
11417,9
11577,7
11738,4
11899,1
12060,1
12221,3
12381,3
12542,6
12703,5
12864,3
13025,0
13185,1
13346,3
13507,1
13668,3
13829,3
13989,3
14150,0
14311,1
14472,3
14633,0
14793,0
14954,0
15115,0
15276,1
15437,0
15597,1
15758,0
15919,0
16080,0
16241,0
16402,0
16562,0
16723,0
16884,0
17045,1
17206,1
17366,0
17527,1
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
set output "evileye/histogram-Latency-cleanup-del-nClients=4096-objectSize=0-up.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

