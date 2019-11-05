
set title "Histogram of downstream latency"
$histo << EOD
0,0
32,59
64,201
96,521
128,998
160,1580
192,2227
225,2727
257,3137
289,3311
321,3075
353,3215
385,2825
418,2648
450,2439
482,2111
514,1725
546,1522
578,1407
611,1082
643,939
675,832
707,637
739,593
771,475
804,415
836,395
868,358
900,347
932,328
964,285
996,286
1029,255
1061,256
1093,241
1125,269
1157,259
1189,256
1222,232
1254,222
1286,226
1318,224
1350,213
1382,206
1415,219
1447,187
1479,225
1511,205
1543,209
1575,238
1608,220
1640,214
1672,238
1704,224
1736,220
1768,232
1801,241
1833,232
1865,251
1897,240
1929,233
1961,260
1993,243
2026,221
2058,263
2090,283
2122,251
2154,251
2186,240
2219,261
2251,222
2283,245
2315,250
2347,245
2379,222
2412,224
2444,222
2476,243
2508,215
2540,226
2572,244
2605,195
2637,222
2669,187
2701,190
2733,191
2765,166
2797,189
2830,195
2862,157
2894,155
2926,146
2958,144
2990,126
3023,117
3055,121
3087,95
3119,87
3151,61
3183,87
3216,70
3248,63
3280,53
3312,43
3344,43
3376,36
3409,43
3441,45
3473,32
3505,28
3537,34
3569,20
3602,22
3634,16
3666,29
3698,18
3730,26
3762,20
3794,16
3827,18
3859,23
3891,11
3923,16
3955,24
3987,25
4020,28
4052,21
4084,18
4116,19
4148,14
4180,16
4213,14
4245,18
4277,14
4309,12
4341,21
4373,9
4406,10
4438,17
4470,9
4502,11
4534,10
4566,5
4598,7
4631,11
4663,4
4695,7
4727,6
4759,3
4791,5
4824,3
4856,1
4888,2
4920,2
4952,0
4984,6
5017,2
5049,0
5081,0
5113,1
5145,1
5177,2
5210,0
5242,2
5274,1
5306,0
5338,2
5370,0
5403,0
5435,1
5467,0
5499,1
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
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=32768-down.png"
plot [:6400] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

