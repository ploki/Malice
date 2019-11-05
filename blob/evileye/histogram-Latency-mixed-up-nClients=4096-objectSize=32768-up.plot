
set title "Histogram of upstream latency"
$histo << EOD
0,0
212,8
424,7
636,2
848,4
1061,4
1273,7
1485,7
1697,12
1909,19
2122,15
2334,24
2546,29
2758,29
2970,31
3183,33
3395,36
3607,33
3819,50
4031,43
4244,73
4456,96
4668,113
4880,119
5092,118
5305,134
5517,177
5729,186
5941,195
6153,196
6366,241
6578,209
6790,229
7002,261
7215,271
7427,286
7639,310
7851,291
8063,287
8276,271
8488,286
8700,307
8912,280
9124,284
9337,276
9549,269
9761,263
9973,308
10185,258
10398,239
10610,250
10822,242
11034,222
11246,224
11459,221
11671,199
11883,211
12095,174
12307,189
12520,179
12732,196
12944,146
13156,132
13368,176
13581,165
13793,150
14005,147
14217,111
14430,124
14642,147
14854,116
15066,116
15278,129
15491,89
15703,100
15915,108
16127,95
16339,88
16552,99
16764,87
16976,77
17188,62
17400,81
17613,76
17825,69
18037,56
18249,58
18461,74
18674,65
18886,41
19098,52
19310,60
19522,41
19735,47
19947,35
20159,34
20371,36
20583,30
20796,21
21008,26
21220,25
21432,23
21645,24
21857,24
22069,27
22281,17
22493,14
22706,18
22918,23
23130,24
23342,16
23554,15
23767,15
23979,10
24191,10
24403,10
24615,10
24828,8
25040,8
25252,4
25464,5
25676,5
25889,5
26101,1
26313,3
26525,1
26737,2
26950,2
27162,1
27374,0
27586,0
27798,0
28011,0
28223,0
28435,0
28647,0
28860,0
29072,0
29284,0
29496,0
29708,1
29921,0
30133,0
30345,1
30557,0
30769,0
30982,0
31194,0
31406,0
31618,0
31830,0
32043,0
32255,0
32467,0
32679,0
32891,0
33104,0
33316,0
33528,0
33740,0
33952,0
34165,0
34377,0
34589,0
34801,0
35013,0
35226,0
35438,0
35650,0
35862,0
36075,0
36287,0
36499,0
36711,0
36923,0
37136,0
37348,0
37560,0
37772,0
37984,0
38197,0
38409,0
38621,0
38833,0
39045,0
39258,0
39470,0
39682,0
39894,0
40106,0
40319,0
40531,0
40743,0
40955,0
41167,0
41380,0
41592,0
41804,0
42016,0
42229,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=4096-objectSize=32768-up.png"
plot [:42229] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

