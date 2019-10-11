
set title "Histogram of downstream bytes per second"
$histo << EOD
0,23201
21,0
42,0
63,0
84,0
105,0
126,0
147,0
168,0
189,0
210,0
231,0
252,0
274,0
295,0
316,0
337,0
358,0
379,0
400,0
421,0
442,0
463,0
484,0
505,0
527,0
548,0
569,0
590,0
611,0
632,0
653,0
674,0
695,0
716,0
737,0
758,0
779,0
801,0
822,0
843,0
864,0
885,0
906,0
927,0
948,0
969,0
990,0
1011,0
1032,0
1054,0
1075,0
1096,0
1117,0
1138,0
1159,0
1180,0
1201,0
1222,0
1243,0
1264,0
1285,0
1306,0
1328,0
1349,0
1370,0
1391,0
1412,0
1433,0
1454,0
1475,0
1496,0
1517,0
1538,0
1559,0
1581,0
1602,0
1623,0
1644,0
1665,0
1686,0
1707,0
1728,0
1749,0
1770,0
1791,0
1812,0
1834,0
1855,0
1876,0
1897,0
1918,0
1939,0
1960,0
1981,0
2002,0
2023,0
2044,0
2065,0
2086,0
2108,0
2129,0
2150,0
2171,0
2192,0
2213,0
2234,0
2255,0
2276,0
2297,0
2318,0
2339,0
2361,0
2382,0
2403,0
2424,0
2445,0
2466,0
2487,0
2508,0
2529,0
2550,0
2571,0
2592,0
2613,0
2635,0
2656,0
2677,0
2698,0
2719,0
2740,0
2761,0
2782,0
2803,0
2824,0
2845,0
2866,0
2888,0
2909,0
2930,0
2951,0
2972,0
2993,0
3014,0
3035,0
3056,0
3077,0
3098,0
3119,0
3140,0
3162,0
3183,0
3204,0
3225,0
3246,0
3267,0
3288,0
3309,0
3330,0
3351,0
3372,0
3393,0
3415,0
3436,0
3457,0
3478,0
3499,0
3520,0
3541,0
3562,0
3583,0
3604,0
3625,0
3646,0
3668,0
3689,0
3710,0
3731,0
3752,0
3773,0
3794,0
3815,0
3836,0
3857,0
3878,0
3899,0
3920,0
3942,0
3963,0
3984,0
4005,0
4026,0
4047,0
4068,0
4089,0
4110,0
4131,0
4152,0
4173,0
4195,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-clientBW-read-down-objectSize=32-down.png"
plot [:295] [0:] '$histo' using 1:2 title 'Crowd of requests over clientBW' with lines

