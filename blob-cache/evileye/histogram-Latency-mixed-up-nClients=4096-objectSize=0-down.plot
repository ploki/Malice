
set title "Histogram of downstream latency"
$histo << EOD
0,9
160,8
321,6
482,8
643,16
804,25
964,20
1125,37
1286,45
1447,58
1608,69
1768,76
1929,111
2090,140
2251,144
2412,182
2572,210
2733,236
2894,315
3055,336
3216,342
3376,371
3537,426
3698,481
3859,512
4020,585
4180,596
4341,675
4502,765
4663,755
4824,776
4984,866
5145,854
5306,923
5467,914
5628,1013
5788,946
5949,984
6110,946
6271,1050
6432,1043
6592,1092
6753,1026
6914,1006
7075,966
7236,965
7396,974
7557,890
7718,899
7879,838
8040,770
8201,782
8361,681
8522,655
8683,641
8844,553
9005,572
9165,504
9326,447
9487,388
9648,414
9809,367
9969,310
10130,291
10291,293
10452,240
10613,207
10773,203
10934,191
11095,158
11256,157
11417,132
11577,114
11738,123
11899,87
12060,72
12221,72
12381,61
12542,63
12703,52
12864,65
13025,37
13185,32
13346,26
13507,25
13668,31
13829,20
13989,18
14150,9
14311,8
14472,11
14633,19
14793,6
14954,12
15115,10
15276,3
15437,7
15597,15
15758,5
15919,8
16080,6
16241,5
16402,8
16562,7
16723,7
16884,1
17045,5
17206,4
17366,3
17527,3
17688,0
17849,1
18010,6
18170,2
18331,1
18492,2
18653,2
18814,0
18974,3
19135,3
19296,2
19457,0
19618,3
19778,3
19939,2
20100,1
20261,2
20422,1
20582,0
20743,1
20904,1
21065,0
21226,0
21386,1
21547,3
21708,1
21869,2
22030,1
22190,2
22351,1
22512,1
22673,1
22834,1
22994,2
23155,0
23316,0
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
25246,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=4096-objectSize=0-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
