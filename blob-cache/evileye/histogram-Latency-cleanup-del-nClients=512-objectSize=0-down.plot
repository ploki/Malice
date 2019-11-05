
set title "Histogram of downstream latency"
$histo << EOD
0,0
32,0
64,1
96,1
128,0
160,0
192,0
225,0
257,1
289,2
321,2
353,5
385,6
418,2
450,4
482,10
514,8
546,9
578,11
611,8
643,12
675,10
707,14
739,9
771,19
804,15
836,15
868,10
900,16
932,4
964,10
996,13
1029,8
1061,8
1093,8
1125,8
1157,9
1189,5
1222,4
1254,1
1286,5
1318,7
1350,4
1382,3
1415,3
1447,1
1479,1
1511,3
1543,0
1575,0
1608,0
1640,1
1672,0
1704,0
1736,0
1768,0
1801,0
1833,0
1865,0
1897,0
1929,0
1961,0
1993,0
2026,0
2058,0
2090,0
2122,0
2154,0
2186,1
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
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=0-down.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

