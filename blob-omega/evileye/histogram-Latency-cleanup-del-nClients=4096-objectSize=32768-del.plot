
set title "Histogram of delstream latency"
$histo << EOD
0,397
160,1135
321,515
482,638
643,818
804,913
964,1027
1125,1144
1286,1287
1447,1434
1608,1656
1768,1918
1929,2065
2090,2253
2251,2452
2412,2642
2572,2690
2733,2755
2894,2656
3055,2917
3216,3004
3376,3081
3537,3142
3698,3262
3859,3431
4020,3433
4180,3484
4341,3361
4502,3386
4663,3522
4824,3438
4984,3585
5145,3605
5306,3589
5467,3712
5628,3746
5788,3745
5949,3704
6110,3636
6271,3575
6432,3667
6592,3757
6753,3867
6914,3966
7075,3853
7236,3718
7396,3588
7557,3500
7718,3436
7879,3233
8040,3146
8201,2967
8361,2659
8522,2490
8683,2205
8844,1979
9005,1735
9165,1479
9326,1322
9487,1125
9648,936
9809,820
9969,715
10130,712
10291,643
10452,660
10613,657
10773,571
10934,503
11095,500
11256,448
11417,426
11577,342
11738,365
11899,318
12060,293
12221,293
12381,304
12542,287
12703,266
12864,240
13025,252
13185,222
13346,224
13507,195
13668,199
13829,157
13989,136
14150,116
14311,84
14472,65
14633,48
14793,42
14954,40
15115,36
15276,29
15437,35
15597,37
15758,24
15919,16
16080,12
16241,11
16402,17
16562,10
16723,6
16884,7
17045,11
17206,7
17366,12
17527,8
17688,4
17849,12
18010,11
18170,12
18331,10
18492,3
18653,2
18814,9
18974,9
19135,5
19296,5
19457,4
19618,5
19778,6
19939,5
20100,2
20261,5
20422,3
20582,0
20743,1
20904,2
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
set output "evileye/histogram-Latency-cleanup-del-nClients=4096-objectSize=32768-del.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

