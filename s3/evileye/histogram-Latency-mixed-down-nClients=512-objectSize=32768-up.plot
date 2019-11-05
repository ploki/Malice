
set title "Histogram of upstream latency"
$histo << EOD
0,0
32,0
64,1
96,3
128,37
160,49
192,95
225,140
257,184
289,224
321,315
353,384
385,402
418,492
450,572
482,626
514,704
546,825
578,875
611,888
643,890
675,1039
707,1067
739,1074
771,1107
804,1074
836,1084
868,1053
900,1009
932,1040
964,1024
996,981
1029,964
1061,907
1093,846
1125,828
1157,789
1189,722
1222,691
1254,644
1286,632
1318,537
1350,483
1382,471
1415,392
1447,364
1479,306
1511,325
1543,309
1575,277
1608,259
1640,224
1672,205
1704,190
1736,151
1768,156
1801,125
1833,120
1865,127
1897,81
1929,71
1961,82
1993,71
2026,60
2058,70
2090,50
2122,41
2154,26
2186,32
2219,37
2251,31
2283,20
2315,23
2347,24
2379,19
2412,16
2444,21
2476,8
2508,14
2540,15
2572,12
2605,17
2637,11
2669,11
2701,7
2733,8
2765,2
2797,8
2830,7
2862,5
2894,4
2926,2
2958,4
2990,4
3023,3
3055,0
3087,3
3119,1
3151,0
3183,0
3216,0
3248,0
3280,2
3312,3
3344,0
3376,0
3409,1
3441,0
3473,0
3505,1
3537,0
3569,0
3602,0
3634,0
3666,0
3698,0
3730,0
3762,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=32768-up.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

