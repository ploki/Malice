
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,6
64,180
96,767
128,1223
160,1468
192,1719
225,1875
257,2143
289,2382
321,2547
353,3078
385,3356
418,3821
450,4103
482,4378
514,4765
546,5186
578,5370
611,5590
643,5820
675,5779
707,6028
739,6203
771,6204
804,6204
836,5937
868,6093
900,5973
932,5661
964,5480
996,5142
1029,4854
1061,4616
1093,4333
1125,4100
1157,3731
1189,3414
1222,3136
1254,2901
1286,2646
1318,2367
1350,2141
1382,1979
1415,1673
1447,1512
1479,1247
1511,1169
1543,1096
1575,901
1608,804
1640,753
1672,652
1704,603
1736,543
1768,482
1801,398
1833,360
1865,351
1897,306
1929,294
1961,264
1993,226
2026,182
2058,186
2090,145
2122,139
2154,123
2186,102
2219,71
2251,81
2283,62
2315,57
2347,36
2379,47
2412,33
2444,31
2476,37
2508,28
2540,34
2572,21
2605,18
2637,13
2669,19
2701,11
2733,10
2765,12
2797,10
2830,6
2862,5
2894,5
2926,3
2958,2
2990,2
3023,0
3055,1
3087,0
3119,3
3151,1
3183,1
3216,1
3248,0
3280,2
3312,0
3344,1
3376,1
3409,1
3441,0
3473,0
3505,0
3537,0
3569,1
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
set output "evileye/histogram-Latency-populate-up-nClients=512-objectSize=32768-up.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

