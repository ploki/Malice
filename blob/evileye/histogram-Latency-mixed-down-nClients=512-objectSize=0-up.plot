
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,0
64,7
96,24
128,53
160,70
192,96
225,104
257,131
289,137
321,163
353,193
385,206
418,233
450,253
482,314
514,325
546,317
578,367
611,426
643,479
675,471
707,534
739,544
771,527
804,554
836,554
868,580
900,588
932,550
964,572
996,566
1029,553
1061,528
1093,542
1125,485
1157,511
1189,516
1222,448
1254,422
1286,371
1318,396
1350,363
1382,334
1415,296
1447,299
1479,255
1511,241
1543,267
1575,232
1608,192
1640,213
1672,178
1704,177
1736,139
1768,110
1801,140
1833,101
1865,116
1897,87
1929,101
1961,75
1993,69
2026,61
2058,55
2090,54
2122,46
2154,52
2186,40
2219,39
2251,37
2283,27
2315,24
2347,17
2379,28
2412,23
2444,26
2476,28
2508,13
2540,17
2572,7
2605,18
2637,13
2669,10
2701,12
2733,8
2765,12
2797,15
2830,10
2862,5
2894,9
2926,8
2958,7
2990,2
3023,7
3055,1
3087,3
3119,3
3151,2
3183,1
3216,2
3248,2
3280,2
3312,4
3344,1
3376,0
3409,3
3441,4
3473,1
3505,1
3537,1
3569,3
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
4116,1
4148,0
4180,1
4213,0
4245,0
4277,0
4309,0
4341,1
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

