
set title "Histogram of upstream latency"
$histo << EOD
0,0
31,0
62,0
93,0
125,0
156,0
187,0
219,0
250,0
281,0
312,0
344,0
375,0
406,0
438,0
469,0
500,0
532,0
563,0
594,0
625,0
657,0
688,0
719,0
751,0
782,0
813,0
845,0
876,0
907,0
938,0
970,0
1001,0
1032,0
1064,0
1095,0
1126,0
1157,0
1189,0
1220,0
1251,0
1283,0
1314,0
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
2628,1
2660,0
2691,0
2722,0
2754,0
2785,1
2816,0
2847,0
2879,0
2910,0
2941,0
2973,3
3004,2
3035,0
3067,1
3098,1
3129,2
3160,0
3192,2
3223,1
3254,1
3286,0
3317,4
3348,1
3380,0
3411,0
3442,1
3473,1
3505,6
3536,0
3567,1
3599,0
3630,0
3661,3
3692,1
3724,1
3755,0
3786,1
3818,1
3849,0
3880,1
3912,0
3943,0
3974,0
4005,0
4037,0
4068,0
4099,3
4131,1
4162,0
4193,0
4225,0
4256,0
4287,0
4318,1
4350,1
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
set output "evileye/histogram-Latency-cleanup-del-objectSize=10485760-up.png"
plot [:6228] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
