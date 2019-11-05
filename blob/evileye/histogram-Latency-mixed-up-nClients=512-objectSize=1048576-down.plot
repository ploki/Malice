
set title "Histogram of downstream latency"
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
2460,0
2496,0
2532,0
2568,0
2605,0
2641,0
2677,0
2713,0
2749,0
2785,0
2822,0
2858,0
2894,0
2930,0
2966,0
3003,0
3039,0
3075,0
3111,0
3147,0
3183,0
3220,0
3256,0
3292,0
3328,0
3364,0
3401,0
3437,0
3473,0
3509,0
3545,0
3581,0
3618,0
3654,0
3690,0
3726,0
3762,0
3798,0
3835,0
3871,0
3907,0
3943,0
3979,0
4016,0
4052,0
4088,1
4124,3
4160,11
4196,9
4233,20
4269,21
4305,47
4341,91
4377,123
4414,160
4450,235
4486,267
4522,317
4558,344
4594,323
4631,350
4667,366
4703,323
4739,340
4775,329
4812,266
4848,212
4884,212
4920,171
4956,139
4992,106
5029,98
5065,74
5101,60
5137,56
5173,62
5210,45
5246,27
5282,34
5318,36
5354,21
5390,19
5427,19
5463,21
5499,18
5535,19
5571,17
5608,27
5644,17
5680,12
5716,10
5752,10
5788,3
5825,3
5861,6
5897,3
5933,9
5969,10
6006,9
6042,9
6078,7
6114,6
6150,7
6186,7
6223,3
6259,6
6295,5
6331,5
6367,0
6404,1
6440,2
6476,5
6512,3
6548,1
6584,2
6621,2
6657,0
6693,1
6729,0
6765,3
6802,1
6838,0
6874,0
6910,0
6946,0
6982,1
7019,0
7055,1
7091,2
7127,0
7163,0
7199,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=512-objectSize=1048576-down.png"
plot [:7200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

