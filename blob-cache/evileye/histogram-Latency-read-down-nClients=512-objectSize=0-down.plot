
set title "Histogram of downstream latency"
$histo << EOD
0,10
32,738
64,1800
96,2435
128,2868
160,3030
192,3154
225,3256
257,3298
289,3148
321,2981
353,2779
385,2590
418,2485
450,2203
482,1982
514,1918
546,1802
578,1614
611,1461
643,1413
675,1283
707,1268
739,1139
771,1088
804,979
836,917
868,811
900,846
932,728
964,683
996,609
1029,543
1061,527
1093,509
1125,480
1157,452
1189,445
1222,400
1254,371
1286,363
1318,376
1350,350
1382,411
1415,338
1447,367
1479,369
1511,364
1543,416
1575,399
1608,411
1640,364
1672,378
1704,391
1736,353
1768,366
1801,360
1833,318
1865,313
1897,334
1929,302
1961,289
1993,275
2026,262
2058,240
2090,243
2122,231
2154,208
2186,176
2219,202
2251,169
2283,153
2315,165
2347,138
2379,136
2412,124
2444,105
2476,104
2508,88
2540,93
2572,95
2605,82
2637,72
2669,60
2701,68
2733,57
2765,52
2797,44
2830,44
2862,46
2894,36
2926,45
2958,41
2990,17
3023,27
3055,21
3087,19
3119,13
3151,10
3183,10
3216,10
3248,10
3280,10
3312,13
3344,17
3376,8
3409,8
3441,8
3473,3
3505,10
3537,7
3569,6
3602,8
3634,4
3666,17
3698,4
3730,11
3762,7
3794,3
3827,4
3859,4
3891,1
3923,8
3955,6
3987,7
4020,6
4052,4
4084,3
4116,3
4148,2
4180,2
4213,3
4245,2
4277,4
4309,2
4341,2
4373,1
4406,2
4438,2
4470,1
4502,4
4534,0
4566,2
4598,1
4631,1
4663,1
4695,0
4727,1
4759,0
4791,1
4824,0
4856,0
4888,2
4920,1
4952,0
4984,0
5017,0
5049,1
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=0-down.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

