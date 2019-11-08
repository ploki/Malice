
set title "Histogram of downstream latency"
$histo << EOD
0,25
32,251
64,363
96,427
128,506
160,614
192,725
225,829
257,1008
289,1244
321,1451
353,1542
385,1751
418,1850
450,1828
482,1802
514,1707
546,1827
578,1664
611,1638
643,1455
675,1454
707,1306
739,1149
771,1100
804,987
836,846
868,804
900,675
932,618
964,503
996,431
1029,376
1061,327
1093,271
1125,208
1157,223
1189,153
1222,115
1254,107
1286,108
1318,73
1350,66
1382,41
1415,53
1447,34
1479,31
1511,13
1543,16
1575,14
1608,8
1640,9
1672,12
1704,5
1736,6
1768,6
1801,8
1833,5
1865,3
1897,3
1929,0
1961,2
1993,2
2026,0
2058,1
2090,1
2122,0
2154,0
2186,0
2219,0
2251,0
2283,0
2315,0
2347,0
2379,0
2412,0
2444,0
2476,0
2508,0
2540,0
2572,0
2605,0
2637,0
2669,0
2701,0
2733,0
2765,0
2797,0
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
set output "evileye/histogram-Latency-mixed-up-nClients=512-objectSize=32768-down.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

