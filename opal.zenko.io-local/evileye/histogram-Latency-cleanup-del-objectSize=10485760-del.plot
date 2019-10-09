
set title "Histogram of delstream latency"
$histo << EOD
0,0
31,0
62,0
93,3
125,9
156,21
187,61
219,129
250,235
281,337
312,474
344,500
375,693
406,622
438,430
469,371
500,271
532,211
563,112
594,45
625,31
657,6
688,5
719,3
751,2
782,2
813,7
845,1
876,0
907,2
938,4
970,3
1001,2
1032,0
1064,0
1095,7
1126,3
1157,1
1189,0
1220,0
1251,1
1283,2
1314,2
1345,0
1377,0
1408,0
1439,0
1470,0
1502,0
1533,0
1564,0
1596,0
1627,0
1658,0
1690,0
1721,0
1752,0
1783,0
1815,0
1846,0
1877,0
1909,0
1940,0
1971,0
2002,0
2034,0
2065,0
2096,0
2128,0
2159,0
2190,0
2222,0
2253,0
2284,0
2315,0
2347,0
2378,0
2409,0
2441,0
2472,0
2503,0
2535,0
2566,0
2597,0
2628,0
2660,0
2691,0
2722,0
2754,0
2785,0
2816,0
2847,0
2879,0
2910,0
2941,0
2973,0
3004,0
3035,0
3067,0
3098,0
3129,0
3160,0
3192,0
3223,0
3254,0
3286,0
3317,0
3348,0
3380,0
3411,0
3442,0
3473,0
3505,0
3536,0
3567,0
3599,0
3630,0
3661,0
3692,0
3724,0
3755,0
3786,0
3818,0
3849,0
3880,0
3912,0
3943,0
3974,0
4005,0
4037,0
4068,0
4099,0
4131,0
4162,0
4193,0
4225,0
4256,0
4287,0
4318,0
4350,0
4381,0
4412,0
4444,0
4475,0
4506,0
4537,0
4569,0
4600,0
4631,0
4663,0
4694,0
4725,0
4757,0
4788,0
4819,0
4850,0
4882,0
4913,0
4944,0
4976,0
5007,0
5038,0
5070,0
5101,0
5132,0
5163,0
5195,0
5226,0
5257,0
5289,0
5320,0
5351,0
5382,0
5414,0
5445,0
5476,0
5508,0
5539,0
5570,0
5602,0
5633,0
5664,0
5695,0
5727,0
5758,0
5789,0
5821,0
5852,0
5883,0
5915,0
5946,0
5977,0
6008,0
6040,0
6071,0
6102,0
6134,0
6165,0
6196,0
6228,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-objectSize=10485760-del.png"
plot [:6228] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

