
set title "Histogram of upstream latency"
$histo << EOD
0,0
37,0
75,0
113,0
150,0
188,2
226,8
263,12
301,49
339,83
377,330
414,885
452,1326
490,1545
527,1259
565,891
603,511
641,270
678,83
716,40
754,17
791,6
829,1
867,0
905,0
942,0
980,0
1018,0
1055,0
1093,0
1131,0
1169,0
1206,0
1244,0
1282,0
1319,0
1357,0
1395,0
1433,0
1470,0
1508,0
1546,0
1583,0
1621,0
1659,0
1697,0
1734,0
1772,0
1810,0
1847,0
1885,0
1923,0
1961,0
1998,0
2036,0
2074,0
2111,0
2149,0
2187,0
2225,0
2262,0
2300,0
2338,0
2375,0
2413,0
2451,0
2489,0
2526,0
2564,0
2602,0
2639,0
2677,0
2715,0
2753,0
2790,0
2828,0
2866,0
2903,0
2941,0
2979,0
3017,0
3054,0
3092,0
3130,0
3167,0
3205,0
3243,0
3281,0
3318,0
3356,0
3394,0
3431,0
3469,0
3507,0
3545,0
3582,0
3620,0
3658,0
3695,0
3733,0
3771,0
3809,0
3846,0
3884,0
3922,0
3959,0
3997,0
4035,0
4073,0
4110,0
4148,0
4186,0
4223,0
4261,0
4299,0
4337,0
4374,0
4412,0
4450,0
4487,0
4525,0
4563,0
4601,0
4638,0
4676,0
4714,0
4751,0
4789,0
4827,0
4865,0
4902,0
4940,0
4978,0
5015,0
5053,0
5091,0
5129,0
5166,0
5204,0
5242,0
5279,0
5317,0
5355,0
5393,0
5430,0
5468,0
5506,0
5543,0
5581,0
5619,0
5657,0
5694,0
5732,0
5770,0
5807,0
5845,0
5883,0
5921,0
5958,0
5996,0
6034,0
6071,0
6109,0
6147,0
6185,0
6222,0
6260,0
6298,0
6335,0
6373,0
6411,0
6449,0
6486,0
6524,0
6562,0
6599,0
6637,0
6675,0
6713,0
6750,0
6788,0
6826,0
6863,0
6901,0
6939,0
6977,0
7014,0
7052,0
7090,0
7127,0
7165,0
7203,0
7241,0
7278,0
7316,0
7354,0
7391,0
7429,0
7467,0
7505,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=1048576-up.png"
plot [:7505] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

