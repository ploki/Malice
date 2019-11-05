
set title "Histogram of upstream latency"
$histo << EOD
0,0
31,0
63,0
95,0
127,0
159,0
191,0
223,0
255,0
287,0
319,0
351,0
382,1
414,0
446,0
478,1
510,1
542,1
574,1
606,1
638,1
670,0
702,2
733,0
765,2
797,2
829,4
861,1
893,3
925,3
957,3
989,4
1021,3
1053,5
1084,10
1116,6
1148,3
1180,7
1212,7
1244,1
1276,4
1308,4
1340,3
1372,11
1404,6
1435,8
1467,3
1499,11
1531,5
1563,3
1595,7
1627,7
1659,6
1691,0
1723,1
1755,5
1786,7
1818,5
1850,5
1882,4
1914,1
1946,2
1978,4
2010,4
2042,4
2074,0
2106,0
2137,2
2169,2
2201,1
2233,1
2265,0
2297,2
2329,2
2361,0
2393,3
2425,1
2457,1
2488,1
2520,1
2552,3
2584,1
2616,0
2648,1
2680,0
2712,0
2744,0
2776,0
2808,1
2839,0
2871,0
2903,0
2935,1
2967,0
2999,0
3031,0
3063,0
3095,0
3127,0
3159,0
3190,0
3222,0
3254,0
3286,0
3318,0
3350,0
3382,0
3414,0
3446,0
3478,0
3510,0
3541,0
3573,0
3605,0
3637,0
3669,0
3701,0
3733,0
3765,0
3797,0
3829,0
3861,0
3892,0
3924,0
3956,0
3988,0
4020,0
4052,0
4084,0
4116,0
4148,0
4180,0
4212,0
4243,0
4275,0
4307,0
4339,0
4371,0
4403,0
4435,0
4467,0
4499,0
4531,0
4563,0
4594,0
4626,0
4658,0
4690,0
4722,0
4754,0
4786,0
4818,0
4850,0
4882,0
4914,0
4945,0
4977,0
5009,0
5041,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=32768-up.png"
plot [:6350] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

