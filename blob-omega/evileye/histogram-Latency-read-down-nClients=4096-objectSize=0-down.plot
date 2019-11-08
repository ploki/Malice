
set title "Histogram of downstream latency"
$histo << EOD
0,2912
160,2485
321,1497
482,953
643,607
804,450
964,545
1125,755
1286,1070
1447,1722
1608,2631
1768,3532
1929,4505
2090,5546
2251,6568
2412,7388
2572,8059
2733,8646
2894,8554
3055,8069
3216,7308
3376,6307
3537,5189
3698,4351
3859,3161
4020,2469
4180,1900
4341,1389
4502,1115
4663,867
4824,636
4984,482
5145,418
5306,433
5467,399
5628,434
5788,510
5949,563
6110,610
6271,485
6432,532
6592,546
6753,427
6914,325
7075,279
7236,262
7396,275
7557,262
7718,266
7879,264
8040,250
8201,234
8361,185
8522,171
8683,150
8844,138
9005,117
9165,106
9326,86
9487,91
9648,83
9809,86
9969,112
10130,79
10291,72
10452,102
10613,95
10773,76
10934,62
11095,60
11256,72
11417,95
11577,102
11738,85
11899,84
12060,75
12221,79
12381,66
12542,57
12703,65
12864,72
13025,65
13185,53
13346,33
13507,35
13668,41
13829,39
13989,56
14150,35
14311,24
14472,24
14633,20
14793,22
14954,23
15115,10
15276,14
15437,14
15597,7
15758,9
15919,14
16080,7
16241,10
16402,5
16562,9
16723,8
16884,7
17045,6
17206,7
17366,9
17527,6
17688,4
17849,4
18010,5
18170,8
18331,4
18492,4
18653,5
18814,5
18974,3
19135,1
19296,2
19457,1
19618,2
19778,1
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
set output "evileye/histogram-Latency-read-down-nClients=4096-objectSize=0-down.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

