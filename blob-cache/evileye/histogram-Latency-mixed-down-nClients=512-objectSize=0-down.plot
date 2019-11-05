
set title "Histogram of downstream latency"
$histo << EOD
0,16
32,127
64,151
96,190
128,279
160,374
192,455
225,586
257,714
289,746
321,944
353,1137
385,1179
418,1311
450,1415
482,1479
514,1588
546,1611
578,1512
611,1602
643,1495
675,1509
707,1458
739,1445
771,1384
804,1365
836,1277
868,1158
900,986
932,992
964,954
996,869
1029,807
1061,739
1093,629
1125,591
1157,534
1189,486
1222,443
1254,380
1286,308
1318,288
1350,268
1382,227
1415,197
1447,173
1479,171
1511,127
1543,126
1575,104
1608,86
1640,94
1672,64
1704,54
1736,59
1768,44
1801,41
1833,38
1865,42
1897,32
1929,19
1961,15
1993,15
2026,19
2058,19
2090,15
2122,14
2154,12
2186,12
2219,2
2251,4
2283,4
2315,5
2347,2
2379,3
2412,6
2444,2
2476,4
2508,2
2540,2
2572,2
2605,2
2637,1
2669,1
2701,1
2733,0
2765,0
2797,1
2830,0
2862,0
2894,1
2926,1
2958,2
2990,0
3023,0
3055,0
3087,1
3119,0
3151,0
3183,0
3216,0
3248,0
3280,0
3312,0
3344,0
3376,0
3409,0
3441,0
3473,0
3505,0
3537,0
3569,0
3602,0
3634,0
3666,0
3698,0
3730,0
3762,0
3794,1
3827,0
3859,0
3891,0
3923,0
3955,0
3987,0
4020,0
4052,0
4084,0
4116,0
4148,0
4180,0
4213,0
4245,0
4277,0
4309,0
4341,0
4373,0
4406,0
4438,0
4470,0
4502,0
4534,0
4566,0
4598,0
4631,0
4663,0
4695,0
4727,0
4759,0
4791,0
4824,0
4856,0
4888,0
4920,0
4952,0
4984,0
5017,0
5049,0
5081,0
5113,0
5145,0
5177,0
5210,0
5242,0
5274,0
5306,0
5338,0
5370,0
5403,0
5435,0
5467,0
5499,0
5531,0
5563,0
5595,0
5628,0
5660,0
5692,0
5724,0
5756,0
5788,0
5821,0
5853,0
5885,0
5917,0
5949,0
5981,0
6014,0
6046,0
6078,0
6110,0
6142,0
6174,0
6207,0
6239,0
6271,0
6303,0
6335,0
6367,0
6399,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=0-down.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

