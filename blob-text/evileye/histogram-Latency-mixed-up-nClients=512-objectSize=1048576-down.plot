
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
2568,2
2605,2
2641,6
2677,9
2713,6
2749,12
2785,8
2822,7
2858,11
2894,7
2930,10
2966,8
3003,6
3039,6
3075,8
3111,7
3147,15
3183,13
3220,19
3256,21
3292,31
3328,45
3364,74
3401,107
3437,172
3473,279
3509,361
3545,472
3581,579
3618,725
3654,720
3690,585
3726,483
3762,474
3798,333
3835,307
3871,206
3907,154
3943,104
3979,81
4016,65
4052,56
4088,39
4124,22
4160,19
4196,25
4233,21
4269,14
4305,23
4341,12
4377,20
4414,10
4450,7
4486,7
4522,9
4558,5
4594,8
4631,6
4667,3
4703,7
4739,5
4775,4
4812,3
4848,7
4884,3
4920,6
4956,6
4992,3
5029,0
5065,5
5101,2
5137,0
5173,4
5210,0
5246,2
5282,0
5318,3
5354,0
5390,1
5427,1
5463,0
5499,2
5535,1
5571,1
5608,1
5644,0
5680,0
5716,0
5752,3
5788,0
5825,1
5861,0
5897,1
5933,0
5969,0
6006,1
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
