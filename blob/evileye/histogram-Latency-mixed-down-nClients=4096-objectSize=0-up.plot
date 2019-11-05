
set title "Histogram of upstream latency"
$histo << EOD
0,1
160,6
321,14
482,5
643,10
804,23
964,19
1125,23
1286,19
1447,39
1608,40
1768,37
1929,52
2090,62
2251,58
2412,76
2572,68
2733,62
2894,66
3055,81
3216,88
3376,99
3537,102
3698,110
3859,122
4020,116
4180,134
4341,142
4502,134
4663,174
4824,153
4984,169
5145,191
5306,206
5467,207
5628,240
5788,217
5949,254
6110,248
6271,232
6432,237
6592,239
6753,259
6914,269
7075,274
7236,286
7396,309
7557,277
7718,253
7879,299
8040,257
8201,283
8361,282
8522,292
8683,291
8844,267
9005,296
9165,255
9326,305
9487,276
9648,297
9809,286
9969,321
10130,260
10291,266
10452,304
10613,265
10773,272
10934,258
11095,257
11256,234
11417,229
11577,256
11738,202
11899,205
12060,207
12221,184
12381,175
12542,162
12703,151
12864,149
13025,160
13185,135
13346,139
13507,102
13668,103
13829,115
13989,91
14150,92
14311,74
14472,63
14633,66
14793,64
14954,71
15115,47
15276,46
15437,46
15597,50
15758,44
15919,42
16080,38
16241,54
16402,41
16562,21
16723,19
16884,25
17045,16
17206,18
17366,14
17527,22
17688,19
17849,11
18010,13
18170,5
18331,15
18492,5
18653,4
18814,2
18974,5
19135,5
19296,5
19457,2
19618,2
19778,2
19939,3
20100,2
20261,2
20422,4
20582,0
20743,2
20904,0
21065,1
21226,1
21386,2
21547,1
21708,2
21869,4
22030,1
22190,1
22351,0
22512,0
22673,1
22834,1
22994,1
23155,2
23316,0
23477,1
23638,0
23798,1
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
28301,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=4096-objectSize=0-up.png"
plot [:32000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

