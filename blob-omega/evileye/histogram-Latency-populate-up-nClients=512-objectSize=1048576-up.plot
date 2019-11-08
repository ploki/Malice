
set title "Histogram of upstream latency"
$histo << EOD
0,0
36,0
72,0
108,0
144,0
180,0
217,0
253,0
289,0
325,0
361,0
397,0
434,0
470,0
506,0
542,0
578,0
615,0
651,0
687,0
723,0
759,0
795,0
832,0
868,0
904,0
940,0
976,0
1013,0
1049,0
1085,0
1121,0
1157,0
1193,0
1230,0
1266,0
1302,0
1338,0
1374,0
1411,0
1447,0
1483,0
1519,0
1555,0
1591,0
1628,0
1664,0
1700,0
1736,0
1772,0
1809,0
1845,0
1881,0
1917,0
1953,0
1989,0
2026,0
2062,0
2098,0
2134,0
2170,0
2207,0
2243,0
2279,0
2315,0
2351,0
2387,0
2424,0
2460,1
2496,0
2532,0
2568,4
2605,3
2641,6
2677,4
2713,5
2749,16
2785,29
2822,24
2858,32
2894,55
2930,113
2966,195
3003,333
3039,534
3075,924
3111,1297
3147,1823
3183,2534
3220,3309
3256,3795
3292,4075
3328,4097
3364,3587
3401,3057
3437,2641
3473,2280
3509,1872
3545,1538
3581,1330
3618,1104
3654,868
3690,620
3726,482
3762,373
3798,306
3835,254
3871,179
3907,148
3943,145
3979,107
4016,105
4052,85
4088,76
4124,57
4160,52
4196,48
4233,36
4269,24
4305,28
4341,22
4377,24
4414,27
4450,15
4486,22
4522,19
4558,13
4594,17
4631,5
4667,7
4703,15
4739,12
4775,14
4812,8
4848,5
4884,20
4920,13
4956,17
4992,6
5029,9
5065,15
5101,7
5137,14
5173,14
5210,10
5246,8
5282,7
5318,5
5354,4
5390,8
5427,11
5463,5
5499,6
5535,12
5571,2
5608,2
5644,1
5680,9
5716,4
5752,6
5788,10
5825,9
5861,4
5897,3
5933,1
5969,0
6006,0
6042,0
6078,0
6114,0
6150,0
6186,0
6223,0
6259,0
6295,0
6331,0
6367,0
6404,0
6440,0
6476,0
6512,0
6548,0
6584,0
6621,0
6657,0
6693,0
6729,0
6765,0
6802,1
6838,0
6874,0
6910,0
6946,0
6982,0
7019,0
7055,0
7091,0
7127,0
7163,0
7199,11
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=512-objectSize=1048576-up.png"
plot [:7200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
