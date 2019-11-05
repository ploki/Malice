
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
2858,1
2894,1
2930,1
2966,2
3003,4
3039,10
3075,13
3111,10
3147,23
3183,31
3220,13
3256,16
3292,10
3328,23
3364,19
3401,18
3437,20
3473,33
3509,72
3545,133
3581,185
3618,269
3654,403
3690,450
3726,597
3762,666
3798,731
3835,523
3871,459
3907,347
3943,282
3979,278
4016,231
4052,158
4088,153
4124,147
4160,97
4196,66
4233,60
4269,48
4305,31
4341,38
4377,15
4414,11
4450,14
4486,12
4522,13
4558,8
4594,10
4631,9
4667,9
4703,3
4739,4
4775,4
4812,3
4848,4
4884,3
4920,0
4956,0
4992,2
5029,1
5065,0
5101,0
5137,0
5173,0
5210,0
5246,1
5282,0
5318,0
5354,0
5390,0
5427,0
5463,0
5499,0
5535,0
5571,0
5608,0
5644,0
5680,0
5716,0
5752,0
5788,0
5825,0
5861,0
5897,0
5933,0
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
6802,0
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
7199,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=512-objectSize=1048576-down.png"
plot [:7200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

