
set title "Histogram of upstream latency"
$histo << EOD
0,0
39,0
79,0
118,0
158,0
197,0
237,1
277,1
316,2
356,2
395,3
435,1
474,5
514,5
554,10
593,8
633,10
672,9
712,9
752,14
791,10
831,8
870,13
910,14
949,14
989,10
1029,15
1068,9
1108,12
1147,18
1187,4
1227,9
1266,10
1306,9
1345,6
1385,5
1424,9
1464,6
1504,8
1543,3
1583,4
1622,3
1662,1
1702,3
1741,2
1781,2
1820,1
1860,0
1899,2
1939,1
1979,0
2018,0
2058,1
2097,0
2137,0
2177,0
2216,0
2256,0
2295,0
2335,0
2374,0
2414,0
2454,0
2493,0
2533,0
2572,0
2612,0
2652,0
2691,0
2731,0
2770,0
2810,0
2849,0
2889,0
2929,0
2968,0
3008,0
3047,0
3087,0
3127,0
3166,0
3206,0
3245,0
3285,0
3324,0
3364,0
3404,0
3443,0
3483,0
3522,0
3562,0
3602,0
3641,0
3681,0
3720,0
3760,0
3799,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=32768-up.png"
plot [:7877] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

