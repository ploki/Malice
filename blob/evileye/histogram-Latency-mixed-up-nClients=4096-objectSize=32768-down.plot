
set title "Histogram of downstream latency"
$histo << EOD
0,1
212,0
424,0
636,0
848,0
1061,0
1273,0
1485,0
1697,0
1909,0
2122,0
2334,4
2546,0
2758,4
2970,4
3183,2
3395,6
3607,3
3819,4
4031,4
4244,5
4456,8
4668,4
4880,8
5092,9
5305,7
5517,7
5729,17
5941,15
6153,22
6366,24
6578,31
6790,30
7002,27
7215,45
7427,47
7639,64
7851,52
8063,68
8276,69
8488,80
8700,81
8912,92
9124,96
9337,121
9549,121
9761,152
9973,176
10185,150
10398,163
10610,182
10822,197
11034,193
11246,176
11459,196
11671,236
11883,215
12095,240
12307,217
12520,258
12732,259
12944,261
13156,240
13368,256
13581,271
13793,259
14005,262
14217,283
14430,261
14642,251
14854,255
15066,265
15278,264
15491,249
15703,271
15915,266
16127,242
16339,245
16552,250
16764,230
16976,244
17188,247
17400,255
17613,208
17825,211
18037,220
18249,187
18461,196
18674,197
18886,207
19098,214
19310,187
19522,213
19735,162
19947,189
20159,170
20371,143
20583,166
20796,167
21008,169
21220,155
21432,132
21645,164
21857,137
22069,109
22281,122
22493,109
22706,121
22918,112
23130,96
23342,108
23554,115
23767,94
23979,88
24191,84
24403,97
24615,86
24828,65
25040,73
25252,75
25464,74
25676,72
25889,47
26101,65
26313,60
26525,45
26737,52
26950,40
27162,45
27374,38
27586,26
27798,29
28011,32
28223,25
28435,29
28647,38
28860,23
29072,21
29284,31
29496,14
29708,21
29921,22
30133,25
30345,17
30557,14
30769,16
30982,20
31194,12
31406,11
31618,3
31830,8
32043,7
32255,4
32467,7
32679,7
32891,3
33104,8
33316,3
33528,5
33740,4
33952,1
34165,4
34377,5
34589,3
34801,4
35013,2
35226,4
35438,4
35650,1
35862,0
36075,1
36287,2
36499,1
36711,1
36923,1
37136,0
37348,1
37560,0
37772,1
37984,1
38197,0
38409,0
38621,0
38833,0
39045,0
39258,0
39470,0
39682,0
39894,0
40106,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=4096-objectSize=32768-down.png"
plot [:42229] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

