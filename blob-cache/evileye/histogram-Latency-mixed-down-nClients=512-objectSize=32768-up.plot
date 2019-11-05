
set title "Histogram of upstream latency"
$histo << EOD
0,0
27,0
55,4
82,12
110,34
137,59
165,91
193,95
220,151
248,172
275,277
303,276
330,348
358,432
386,503
413,613
441,702
468,726
496,778
523,832
551,949
579,934
606,973
634,1021
661,963
689,1037
716,1043
744,1061
772,976
799,952
827,950
854,888
882,939
909,858
937,824
965,780
992,684
1020,656
1047,584
1075,543
1102,535
1130,477
1158,430
1185,411
1213,362
1240,318
1268,300
1295,278
1323,259
1351,202
1378,193
1406,195
1433,167
1461,143
1488,136
1516,115
1544,127
1571,101
1599,82
1626,91
1654,79
1681,60
1709,58
1737,49
1764,43
1792,51
1819,43
1847,23
1874,41
1902,31
1930,27
1957,20
1985,25
2012,13
2040,18
2067,19
2095,17
2123,9
2150,11
2178,13
2205,6
2233,4
2260,6
2288,7
2316,6
2343,3
2371,6
2398,3
2426,7
2453,3
2481,4
2509,3
2536,1
2564,0
2591,1
2619,2
2646,3
2674,5
2702,3
2729,2
2757,4
2784,1
2812,1
2840,1
2867,0
2895,1
2922,2
2950,0
2977,1
3005,0
3033,0
3060,0
3088,0
3115,0
3143,0
3170,0
3198,1
3226,1
3253,0
3281,0
3308,0
3336,0
3363,0
3391,0
3419,0
3446,0
3474,0
3501,0
3529,0
3556,0
3584,0
3612,0
3639,0
3667,0
3694,0
3722,0
3749,0
3777,0
3805,0
3832,0
3860,0
3887,0
3915,0
3942,0
3970,0
3998,0
4025,0
4053,0
4080,0
4108,0
4135,0
4163,0
4191,0
4218,0
4246,0
4273,0
4301,0
4328,0
4356,0
4384,0
4411,0
4439,0
4466,0
4494,0
4521,0
4549,0
4577,0
4604,0
4632,0
4659,0
4687,0
4714,0
4742,0
4770,0
4797,0
4825,0
4852,0
4880,0
4907,0
4935,0
4963,0
4990,0
5018,0
5045,0
5073,0
5100,0
5128,0
5156,0
5183,0
5211,0
5238,0
5266,0
5293,0
5321,0
5349,0
5376,0
5404,0
5431,0
5459,0
5487,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=512-objectSize=32768-up.png"
plot [:5487] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

