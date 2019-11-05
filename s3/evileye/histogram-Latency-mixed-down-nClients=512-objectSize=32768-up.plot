
set title "Histogram of upstream latency"
$histo << EOD
0,0
39,0
79,2
118,32
158,61
197,126
237,192
277,250
316,366
356,471
395,541
435,648
474,758
514,875
554,1025
593,1089
633,1096
672,1247
712,1313
752,1359
791,1341
831,1323
870,1295
910,1279
949,1214
989,1230
1029,1162
1068,1143
1108,1027
1147,960
1187,919
1227,827
1266,824
1306,683
1345,604
1385,563
1424,481
1464,399
1504,400
1543,369
1583,336
1622,311
1662,249
1702,240
1741,188
1781,184
1820,152
1860,147
1899,94
1939,100
1979,94
2018,71
2058,84
2097,54
2137,46
2177,38
2216,41
2256,40
2295,27
2335,23
2374,27
2414,18
2454,23
2493,11
2533,20
2572,18
2612,19
2652,13
2691,8
2731,11
2770,2
2810,10
2849,9
2889,3
2929,3
2968,5
3008,6
3047,0
3087,3
3127,1
3166,0
3206,0
3245,0
3285,3
3324,2
3364,0
3404,0
3443,1
3483,0
3522,1
3562,0
3602,0
3641,0
3681,0
3720,0
3760,1
3799,1
3839,0
3879,0
3918,0
3958,0
3997,0
4037,0
4077,0
4116,0
4156,0
4195,0
4235,0
4274,0
4314,0
4354,0
4393,0
4433,0
4472,0
4512,0
4552,0
4591,0
4631,0
4670,0
4710,0
4749,0
4789,0
4829,0
4868,0
4908,0
4947,0
4987,0
5027,0
5066,0
5106,0
5145,0
5185,0
5224,0
5264,0
5304,0
5343,0
5383,0
5422,0
5462,0
5502,0
5541,0
5581,0
5620,0
5660,0
5699,0
5739,0
5779,0
5818,0
5858,0
5897,0
5937,0
5977,0
6016,0
6056,0
6095,0
6135,0
6174,0
6214,0
6254,0
6293,0
6333,0
6372,0
6412,0
6452,0
6491,0
6531,0
6570,0
6610,0
6649,0
6689,0
6729,0
6768,0
6808,0
6847,0
6887,0
6927,0
6966,0
7006,0
7045,0
7085,0
7124,0
7164,0
7204,0
7243,0
7283,0
7322,0
7362,0
7402,0
7441,0
7481,0
7520,0
7560,0
7599,0
7639,0
7679,0
7718,0
7758,0
7797,0
7837,0
7876,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=32768-up.png"
plot [:7877] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

