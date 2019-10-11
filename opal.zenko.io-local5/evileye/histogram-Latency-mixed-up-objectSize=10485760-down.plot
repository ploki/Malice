
set title "Histogram of downstream latency"
$histo << EOD
0,0
19,0
39,0
59,0
78,0
98,0
118,0
137,0
157,0
177,0
196,0
216,0
236,0
256,0
275,0
295,0
315,0
334,0
354,0
374,1
393,0
413,0
433,1
452,1
472,1
492,2
512,0
531,7
551,11
571,23
590,32
610,52
630,58
649,79
669,90
689,90
708,94
728,96
748,88
768,67
787,59
807,40
827,37
846,27
866,17
886,18
905,5
925,2
945,3
964,4
984,4
1004,0
1024,4
1043,1
1063,0
1083,0
1102,1
1122,0
1142,1
1161,0
1181,0
1201,0
1220,0
1240,1
1260,0
1280,0
1299,0
1319,1
1339,0
1358,0
1378,0
1398,0
1417,0
1437,0
1457,0
1477,0
1496,0
1516,0
1536,0
1555,1
1575,0
1595,0
1614,0
1634,0
1654,0
1673,0
1693,0
1713,0
1733,1
1752,0
1772,0
1792,0
1811,0
1831,0
1851,0
1870,0
1890,0
1910,0
1929,0
1949,0
1969,0
1989,0
2008,0
2028,0
2048,0
2067,0
2087,0
2107,0
2126,0
2146,0
2166,0
2185,0
2205,0
2225,0
2245,0
2264,0
2284,0
2304,0
2323,0
2343,0
2363,0
2382,0
2402,0
2422,0
2441,0
2461,0
2481,0
2501,0
2520,0
2540,0
2560,0
2579,0
2599,0
2619,0
2638,0
2658,0
2678,0
2698,0
2717,0
2737,0
2757,0
2776,0
2796,0
2816,0
2835,0
2855,0
2875,0
2894,0
2914,0
2934,0
2954,0
2973,0
2993,0
3013,0
3032,0
3052,0
3072,0
3091,0
3111,0
3131,0
3150,0
3170,0
3190,0
3210,0
3229,0
3249,0
3269,0
3288,0
3308,0
3328,0
3347,0
3367,0
3387,0
3406,0
3426,0
3446,0
3466,0
3485,0
3505,0
3525,0
3544,0
3564,0
3584,0
3603,0
3623,0
3643,0
3662,0
3682,0
3702,0
3722,0
3741,0
3761,0
3781,0
3800,0
3820,0
3840,0
3859,0
3879,0
3899,0
3918,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-objectSize=10485760-down.png"
plot [:3919] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

