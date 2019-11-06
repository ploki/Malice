
set title "Histogram of downstream latency"
$histo << EOD
0,1
160,3
321,8
482,11
643,11
804,11
964,19
1125,22
1286,32
1447,40
1608,35
1768,60
1929,63
2090,88
2251,83
2412,58
2572,97
2733,111
2894,113
3055,165
3216,166
3376,168
3537,198
3698,240
3859,211
4020,269
4180,266
4341,301
4502,293
4663,348
4824,362
4984,387
5145,393
5306,436
5467,399
5628,435
5788,493
5949,477
6110,451
6271,509
6432,483
6592,526
6753,544
6914,524
7075,559
7236,512
7396,505
7557,515
7718,549
7879,513
8040,495
8201,495
8361,497
8522,503
8683,466
8844,509
9005,511
9165,447
9326,450
9487,472
9648,466
9809,472
9969,472
10130,476
10291,422
10452,413
10613,392
10773,404
10934,392
11095,403
11256,364
11417,355
11577,339
11738,312
11899,331
12060,277
12221,288
12381,285
12542,269
12703,252
12864,223
13025,190
13185,192
13346,202
13507,183
13668,166
13829,150
13989,133
14150,122
14311,162
14472,130
14633,122
14793,100
14954,116
15115,83
15276,81
15437,86
15597,76
15758,60
15919,62
16080,53
16241,64
16402,60
16562,53
16723,57
16884,43
17045,49
17206,42
17366,37
17527,29
17688,29
17849,28
18010,32
18170,23
18331,18
18492,21
18653,17
18814,20
18974,14
19135,10
19296,12
19457,10
19618,14
19778,8
19939,8
20100,6
20261,8
20422,4
20582,6
20743,5
20904,2
21065,9
21226,4
21386,2
21547,3
21708,1
21869,4
22030,4
22190,0
22351,2
22512,3
22673,1
22834,1
22994,1
23155,4
23316,1
23477,1
23638,1
23798,0
23959,1
24120,0
24281,1
24442,1
24603,0
24763,1
24924,0
25085,1
25246,0
25407,0
25567,0
25728,0
25889,0
26050,0
26211,0
26371,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=4096-objectSize=32768-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
