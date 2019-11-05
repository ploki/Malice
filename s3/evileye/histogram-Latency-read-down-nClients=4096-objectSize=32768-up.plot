
set title "Histogram of upstream latency"
$histo << EOD
0,0
160,0
321,1
482,0
643,1
804,0
964,1
1125,3
1286,1
1447,4
1608,7
1768,5
1929,8
2090,7
2251,11
2412,10
2572,16
2733,18
2894,9
3055,18
3216,21
3376,31
3537,31
3698,29
3859,33
4020,47
4180,47
4341,31
4502,44
4663,46
4824,29
4984,47
5145,68
5306,41
5467,34
5628,35
5788,58
5949,47
6110,58
6271,58
6432,52
6592,63
6753,61
6914,71
7075,59
7236,66
7396,65
7557,64
7718,59
7879,56
8040,61
8201,56
8361,71
8522,80
8683,81
8844,69
9005,69
9165,78
9326,78
9487,62
9648,59
9809,57
9969,48
10130,50
10291,51
10452,44
10613,44
10773,42
10934,51
11095,45
11256,49
11417,42
11577,40
11738,47
11899,33
12060,42
12221,29
12381,22
12542,38
12703,37
12864,34
13025,29
13185,22
13346,34
13507,35
13668,31
13829,29
13989,18
14150,20
14311,23
14472,26
14633,23
14793,27
14954,20
15115,17
15276,12
15437,19
15597,29
15758,20
15919,19
16080,17
16241,15
16402,19
16562,11
16723,12
16884,13
17045,18
17206,18
17366,15
17527,11
17688,16
17849,14
18010,19
18170,9
18331,16
18492,14
18653,9
18814,7
18974,9
19135,8
19296,11
19457,8
19618,7
19778,3
19939,6
20100,5
20261,10
20422,3
20582,8
20743,3
20904,9
21065,9
21226,5
21386,5
21547,6
21708,3
21869,4
22030,5
22190,6
22351,6
22512,6
22673,6
22834,4
22994,4
23155,0
23316,1
23477,3
23638,4
23798,3
23959,3
24120,1
24281,2
24442,0
24603,1
24763,0
24924,0
25085,0
25246,5
25407,1
25567,0
25728,0
25889,0
26050,0
26211,1
26371,0
26532,1
26693,1
26854,0
27015,0
27175,0
27336,0
27497,0
27658,0
27819,0
27979,1
28140,0
28301,0
28462,0
28623,0
28783,0
28944,2
29105,1
29266,0
29427,0
29587,0
29748,0
29909,0
30070,0
30231,1
30391,0
30552,0
30713,0
30874,1
31035,0
31195,0
31356,0
31517,0
31678,0
31839,0
32000,13
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=4096-objectSize=32768-up.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

