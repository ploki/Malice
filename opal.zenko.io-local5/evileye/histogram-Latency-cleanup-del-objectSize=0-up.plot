
set title "Histogram of upstream latency"
$histo << EOD
0,0
224,0
449,0
674,0
899,0
1123,0
1348,0
1573,0
1798,0
2023,0
2247,0
2472,Infinity
2697,Infinity
2922,Infinity
3147,Infinity
3371,Infinity
3596,Infinity
3821,Infinity
4046,Infinity
4270,Infinity
4495,Infinity
4720,Infinity
4945,Infinity
5170,Infinity
5394,Infinity
5619,Infinity
5844,Infinity
6069,Infinity
6294,Infinity
6518,Infinity
6743,Infinity
6968,Infinity
7193,Infinity
7418,Infinity
7642,Infinity
7867,Infinity
8092,Infinity
8317,Infinity
8541,Infinity
8766,Infinity
8991,Infinity
9216,Infinity
9441,Infinity
9665,Infinity
9890,Infinity
10115,Infinity
10340,Infinity
10565,Infinity
10789,Infinity
11014,Infinity
11239,Infinity
11464,Infinity
11689,Infinity
11913,Infinity
12138,Infinity
12363,Infinity
12588,Infinity
12812,Infinity
13037,Infinity
13262,Infinity
13487,Infinity
13712,Infinity
13936,Infinity
14161,Infinity
14386,Infinity
14611,Infinity
14836,Infinity
15060,Infinity
15285,Infinity
15510,Infinity
15735,Infinity
15960,Infinity
16184,Infinity
16409,Infinity
16634,Infinity
16859,Infinity
17083,Infinity
17308,Infinity
17533,Infinity
17758,Infinity
17983,Infinity
18207,Infinity
18432,Infinity
18657,Infinity
18882,Infinity
19107,Infinity
19331,Infinity
19556,Infinity
19781,Infinity
20006,Infinity
20231,Infinity
20455,Infinity
20680,Infinity
20905,Infinity
21130,Infinity
21354,Infinity
21579,Infinity
21804,Infinity
22029,Infinity
22254,Infinity
22478,Infinity
22703,Infinity
22928,Infinity
23153,Infinity
23378,Infinity
23602,Infinity
23827,Infinity
24052,Infinity
24277,Infinity
24501,Infinity
24726,Infinity
24951,Infinity
25176,Infinity
25401,Infinity
25625,Infinity
25850,Infinity
26075,Infinity
26300,Infinity
26525,Infinity
26749,Infinity
26974,Infinity
27199,Infinity
27424,Infinity
27649,Infinity
27873,Infinity
28098,Infinity
28323,Infinity
28548,Infinity
28772,Infinity
28997,Infinity
29222,Infinity
29447,Infinity
29672,Infinity
29896,Infinity
30121,Infinity
30346,Infinity
30571,Infinity
30796,Infinity
31020,Infinity
31245,0
31470,Infinity
31695,Infinity
31920,Infinity
32144,Infinity
32369,Infinity
32594,Infinity
32819,0
33043,Infinity
33268,0
33493,Infinity
33718,Infinity
33943,Infinity
34167,Infinity
34392,0
34617,0
34842,Infinity
35067,Infinity
35291,0
35516,Infinity
35741,Infinity
35966,0
36191,Infinity
36415,Infinity
36640,0
36865,0
37090,Infinity
37314,0
37539,Infinity
37764,0
37989,Infinity
38214,0
38438,0
38663,0
38888,0
39113,0
39338,0
39562,0
39787,0
40012,0
40237,0
40462,0
40686,0
40911,0
41136,0
41361,0
41585,0
41810,0
42035,0
42260,0
42485,0
42709,0
42934,0
43159,0
43384,0
43609,0
43833,0
44058,0
44283,0
44508,0
44733,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-objectSize=0-up.png"
plot [:44733] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

