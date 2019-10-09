
set title "Histogram of upstream bytes per second"
$histo << EOD
0,0
18,0
36,0
55,313
73,3510
92,727
110,41
129,8
147,1
166,0
184,0
203,0
221,0
240,0
258,0
276,0
295,0
313,0
332,0
350,0
369,0
387,0
406,0
424,0
443,0
461,0
480,0
498,0
516,0
535,0
553,0
572,0
590,0
609,0
627,0
646,0
664,0
683,0
701,0
720,0
738,0
756,0
775,0
793,0
812,0
830,0
849,0
867,0
886,0
904,0
923,0
941,0
960,0
978,0
996,0
1015,0
1033,0
1052,0
1070,0
1089,0
1107,0
1126,0
1144,0
1163,0
1181,0
1200,0
1218,0
1236,0
1255,0
1273,0
1292,0
1310,0
1329,0
1347,0
1366,0
1384,0
1403,0
1421,0
1440,0
1458,0
1476,0
1495,0
1513,0
1532,0
1550,0
1569,0
1587,0
1606,0
1624,0
1643,0
1661,0
1680,0
1698,0
1716,0
1735,0
1753,0
1772,0
1790,0
1809,0
1827,0
1846,0
1864,0
1883,0
1901,0
1920,0
1938,0
1956,0
1975,0
1993,0
2012,0
2030,0
2049,0
2067,0
2086,0
2104,0
2123,0
2141,0
2160,0
2178,0
2196,0
2215,0
2233,0
2252,0
2270,0
2289,0
2307,0
2326,0
2344,0
2363,0
2381,0
2400,0
2418,0
2436,0
2455,0
2473,0
2492,0
2510,0
2529,0
2547,0
2566,0
2584,0
2603,0
2621,0
2640,0
2658,0
2676,0
2695,0
2713,0
2732,0
2750,0
2769,0
2787,0
2806,0
2824,0
2843,0
2861,0
2880,0
2898,0
2916,0
2935,0
2953,0
2972,0
2990,0
3009,0
3027,0
3046,0
3064,0
3083,0
3101,0
3120,0
3138,0
3156,0
3175,0
3193,0
3212,0
3230,0
3249,0
3267,0
3286,0
3304,0
3323,0
3341,0
3360,0
3378,0
3396,0
3415,0
3433,0
3452,0
3470,0
3489,0
3507,0
3526,0
3544,0
3563,0
3581,0
3600,0
3618,0
3636,0
3655,0
3673,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-clientBW-populate-up-objectSize=10485760-up.png"
plot [:6228] [0:] '$histo' using 1:2 title 'Crowd of requests over clientBW' with lines

