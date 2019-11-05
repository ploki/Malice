
set title "Histogram of delstream latency"
$histo << EOD
0,0
39,371
79,3966
118,3736
158,2451
197,2552
237,3355
277,4152
316,5162
356,5832
395,6518
435,7200
474,7633
514,7990
554,8333
593,8376
633,8226
672,8285
712,7938
752,7530
791,7212
831,6792
870,6318
910,5683
949,5281
989,4843
1029,4345
1068,3802
1108,3435
1147,2990
1187,2616
1227,2477
1266,2086
1306,1774
1345,1515
1385,1401
1424,1167
1464,932
1504,826
1543,666
1583,601
1622,540
1662,400
1702,396
1741,310
1781,264
1820,221
1860,207
1899,174
1939,153
1979,137
2018,88
2058,84
2097,81
2137,60
2177,64
2216,52
2256,59
2295,23
2335,39
2374,35
2414,20
2454,20
2493,15
2533,8
2572,6
2612,5
2652,3
2691,6
2731,3
2770,3
2810,5
2849,0
2889,2
2929,2
2968,3
3008,3
3047,1
3087,2
3127,2
3166,1
3206,2
3245,0
3285,2
3324,1
3364,0
3404,1
3443,0
3483,0
3522,0
3562,0
3602,1
3641,1
3681,1
3720,0
3760,1
3799,0
3839,0
3879,2
3918,0
3958,0
3997,1
4037,0
4077,0
4116,0
4156,0
4195,0
4235,0
4274,0
4314,1
4354,0
4393,0
4433,0
4472,1
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
5066,1
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
7560,1
7599,0
7639,1
7679,0
7718,0
7758,0
7797,0
7837,0
7876,2
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=32768-del.png"
plot [:7877] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

