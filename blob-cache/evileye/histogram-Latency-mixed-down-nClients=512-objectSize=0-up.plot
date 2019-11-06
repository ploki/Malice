
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,37
64,289
96,812
128,979
160,889
192,969
225,1038
257,1095
289,1291
321,1395
353,1435
385,1585
418,1734
450,1797
482,1800
514,1706
546,1715
578,1630
611,1566
643,1502
675,1453
707,1324
739,1170
771,1069
804,939
836,868
868,821
900,658
932,607
964,575
996,460
1029,447
1061,421
1093,343
1125,299
1157,281
1189,225
1222,232
1254,166
1286,147
1318,122
1350,104
1382,88
1415,67
1447,80
1479,69
1511,70
1543,42
1575,40
1608,45
1640,27
1672,35
1704,35
1736,22
1768,22
1801,18
1833,19
1865,18
1897,14
1929,18
1961,11
1993,12
2026,14
2058,9
2090,8
2122,9
2154,9
2186,7
2219,3
2251,5
2283,4
2315,3
2347,3
2379,6
2412,2
2444,0
2476,4
2508,1
2540,1
2572,1
2605,0
2637,0
2669,0
2701,0
2733,0
2765,1
2797,1
2830,0
2862,0
2894,0
2926,0
2958,0
2990,0
3023,0
3055,0
3087,0
3119,0
3151,0
3183,0
3216,0
3248,0
3280,1
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
3794,0
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
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=0-up.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
