
set title "Histogram of upstream latency"
$histo << EOD
0,0
31,0
63,1
95,11
127,21
159,24
191,31
223,41
255,47
287,61
319,72
351,74
382,69
414,78
446,114
478,103
510,132
542,129
574,149
606,168
638,198
670,178
702,224
733,256
765,264
797,250
829,304
861,302
893,357
925,296
957,343
989,308
1021,349
1053,354
1084,370
1116,392
1148,381
1180,395
1212,372
1244,355
1276,366
1308,329
1340,320
1372,312
1404,340
1435,312
1467,290
1499,290
1531,288
1563,306
1595,260
1627,281
1659,269
1691,253
1723,205
1755,214
1786,209
1818,181
1850,184
1882,165
1914,163
1946,131
1978,135
2010,158
2042,129
2074,121
2106,114
2137,88
2169,82
2201,92
2233,90
2265,81
2297,60
2329,57
2361,70
2393,72
2425,71
2457,57
2488,47
2520,59
2552,41
2584,33
2616,38
2648,47
2680,38
2712,32
2744,27
2776,22
2808,36
2839,25
2871,24
2903,23
2935,18
2967,14
2999,23
3031,26
3063,15
3095,14
3127,12
3159,13
3190,10
3222,11
3254,13
3286,14
3318,7
3350,13
3382,7
3414,1
3446,3
3478,6
3510,7
3541,6
3573,2
3605,3
3637,2
3669,6
3701,4
3733,2
3765,2
3797,3
3829,4
3861,4
3892,2
3924,0
3956,3
3988,1
4020,0
4052,0
4084,2
4116,1
4148,1
4180,0
4212,0
4243,0
4275,0
4307,0
4339,0
4371,0
4403,0
4435,0
4467,2
4499,1
4531,0
4563,0
4594,1
4626,1
4658,0
4690,0
4722,0
4754,0
4786,0
4818,0
4850,0
4882,0
4914,0
4945,1
4977,0
5009,0
5041,1
5073,0
5105,0
5137,0
5169,0
5201,0
5233,0
5265,0
5296,0
5328,0
5360,0
5392,0
5424,0
5456,0
5488,0
5520,0
5552,0
5584,0
5616,0
5647,0
5679,0
5711,0
5743,0
5775,0
5807,0
5839,0
5871,0
5903,0
5935,0
5967,0
5998,0
6030,0
6062,0
6094,0
6126,0
6158,0
6190,0
6222,0
6254,0
6286,0
6318,0
6350,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=32768-up.png"
plot [:6350] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

