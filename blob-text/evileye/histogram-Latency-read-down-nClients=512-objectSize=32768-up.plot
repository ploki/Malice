
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,0
64,0
96,1
128,1
160,0
192,0
225,0
257,2
289,4
321,1
353,4
385,2
418,7
450,6
482,10
514,10
546,9
578,18
611,20
643,15
675,22
707,20
739,19
771,32
804,26
836,24
868,20
900,20
932,21
964,21
996,18
1029,12
1061,12
1093,11
1125,10
1157,5
1189,8
1222,10
1254,10
1286,9
1318,3
1350,1
1382,3
1415,5
1447,5
1479,8
1511,2
1543,1
1575,2
1608,4
1640,3
1672,2
1704,2
1736,5
1768,1
1801,2
1833,3
1865,3
1897,1
1929,1
1961,3
1993,1
2026,0
2058,1
2090,0
2122,4
2154,2
2186,1
2219,0
2251,0
2283,1
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
2765,1
2797,0
2830,0
2862,1
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=32768-up.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

