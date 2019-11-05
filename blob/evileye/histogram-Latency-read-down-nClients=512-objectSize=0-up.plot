
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,0
64,0
96,0
128,0
160,1
192,1
225,0
257,0
289,0
321,0
353,0
385,3
418,3
450,0
482,2
514,1
546,4
578,6
611,4
643,7
675,10
707,7
739,7
771,9
804,14
836,11
868,14
900,11
932,15
964,12
996,17
1029,12
1061,11
1093,15
1125,11
1157,17
1189,10
1222,14
1254,4
1286,14
1318,10
1350,13
1382,15
1415,5
1447,14
1479,13
1511,14
1543,9
1575,10
1608,9
1640,7
1672,9
1704,7
1736,10
1768,8
1801,7
1833,4
1865,11
1897,6
1929,4
1961,2
1993,5
2026,4
2058,4
2090,3
2122,7
2154,3
2186,2
2219,6
2251,1
2283,0
2315,1
2347,1
2379,3
2412,1
2444,4
2476,2
2508,0
2540,1
2572,1
2605,2
2637,1
2669,1
2701,0
2733,0
2765,2
2797,1
2830,0
2862,0
2894,0
2926,1
2958,1
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=0-up.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

