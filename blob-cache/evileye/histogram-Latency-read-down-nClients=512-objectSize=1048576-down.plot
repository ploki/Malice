
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
2351,1
2387,10
2424,5
2460,5
2496,1
2532,22
2568,20
2605,6
2641,11
2677,13
2713,17
2749,15
2785,45
2822,21
2858,49
2894,53
2930,82
2966,99
3003,142
3039,145
3075,170
3111,195
3147,205
3183,199
3220,331
3256,389
3292,437
3328,535
3364,631
3401,709
3437,626
3473,669
3509,628
3545,626
3581,633
3618,659
3654,730
3690,654
3726,552
3762,459
3798,449
3835,396
3871,344
3907,316
3943,275
3979,224
4016,219
4052,206
4088,150
4124,127
4160,90
4196,100
4233,73
4269,29
4305,25
4341,32
4377,17
4414,13
4450,4
4486,8
4522,8
4558,10
4594,4
4631,2
4667,1
4703,4
4739,3
4775,2
4812,0
4848,2
4884,0
4920,0
4956,0
4992,1
5029,0
5065,0
5101,0
5137,1
5173,0
5210,0
5246,0
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=1048576-down.png"
plot [:7200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

