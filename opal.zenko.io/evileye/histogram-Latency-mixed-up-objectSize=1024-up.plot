
set title "Histogram of upstream latency"
$histo << EOD
0,0
25,0
50,0
75,0
100,0
125,0
150,0
175,0
201,0
226,0
251,4
276,22
301,106
326,262
351,477
376,937
402,1148
427,990
452,756
477,524
502,314
527,147
552,70
577,34
603,6
628,1
653,3
678,0
703,0
728,0
753,1
778,0
804,0
829,0
854,0
879,0
904,0
929,0
954,0
979,0
1005,0
1030,0
1055,0
1080,0
1105,0
1130,0
1155,0
1180,0
1206,0
1231,0
1256,0
1281,0
1306,0
1331,0
1356,0
1381,0
1407,0
1432,0
1457,0
1482,0
1507,0
1532,0
1557,0
1582,0
1608,0
1633,0
1658,0
1683,0
1708,0
1733,0
1758,0
1783,0
1809,0
1834,0
1859,0
1884,0
1909,0
1934,0
1959,0
1984,0
2010,0
2035,0
2060,0
2085,0
2110,0
2135,0
2160,0
2185,0
2211,0
2236,0
2261,0
2286,0
2311,0
2336,0
2361,0
2386,0
2412,0
2437,0
2462,0
2487,0
2512,0
2537,0
2562,0
2587,0
2613,0
2638,0
2663,0
2688,0
2713,0
2738,0
2763,0
2788,0
2814,0
2839,0
2864,0
2889,0
2914,0
2939,0
2964,0
2989,0
3015,0
3040,0
3065,0
3090,0
3115,0
3140,0
3165,0
3190,0
3216,0
3241,0
3266,0
3291,0
3316,0
3341,0
3366,0
3391,0
3417,0
3442,0
3467,0
3492,0
3517,0
3542,0
3567,0
3592,0
3618,0
3643,0
3668,0
3693,0
3718,0
3743,0
3768,0
3793,0
3819,0
3844,0
3869,0
3894,0
3919,0
3944,0
3969,0
3994,0
4020,0
4045,0
4070,0
4095,0
4120,0
4145,0
4170,0
4195,0
4221,0
4246,0
4271,0
4296,0
4321,0
4346,0
4371,0
4396,0
4422,0
4447,0
4472,0
4497,0
4522,0
4547,0
4572,0
4597,0
4623,0
4648,0
4673,0
4698,0
4723,0
4748,0
4773,0
4798,0
4824,0
4849,0
4874,0
4899,0
4924,0
4949,0
4974,0
5000,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-objectSize=1024-up.png"
plot [:5000] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

