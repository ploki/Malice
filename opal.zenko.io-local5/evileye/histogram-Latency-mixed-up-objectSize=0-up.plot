
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
2472,0
2697,0
2922,0
3147,0
3371,0
3596,0
3821,0
4046,0
4270,0
4495,0
4720,0
4945,0
5170,0
5394,0
5619,0
5844,0
6069,0
6294,0
6518,0
6743,0
6968,0
7193,0
7418,0
7642,0
7867,0
8092,0
8317,0
8541,0
8766,0
8991,0
9216,0
9441,0
9665,0
9890,0
10115,0
10340,0
10565,0
10789,0
11014,0
11239,0
11464,0
11689,0
11913,0
12138,0
12363,0
12588,0
12812,0
13037,0
13262,0
13487,0
13712,0
13936,0
14161,0
14386,0
14611,0
14836,0
15060,0
15285,0
15510,0
15735,0
15960,0
16184,0
16409,0
16634,0
16859,0
17083,0
17308,0
17533,0
17758,0
17983,0
18207,0
18432,0
18657,0
18882,0
19107,0
19331,0
19556,0
19781,0
20006,0
20231,0
20455,0
20680,0
20905,0
21130,0
21354,0
21579,0
21804,0
22029,0
22254,0
22478,0
22703,0
22928,0
23153,0
23378,0
23602,0
23827,0
24052,0
24277,0
24501,0
24726,0
24951,0
25176,0
25401,0
25625,0
25850,0
26075,0
26300,0
26525,0
26749,0
26974,0
27199,0
27424,0
27649,0
27873,0
28098,0
28323,0
28548,0
28772,0
28997,0
29222,0
29447,0
29672,0
29896,0
30121,0
30346,0
30571,0
30796,0
31020,0
31245,0
31470,0
31695,0
31920,0
32144,0
32369,0
32594,0
32819,0
33043,0
33268,0
33493,0
33718,0
33943,0
34167,0
34392,0
34617,0
34842,0
35067,0
35291,0
35516,0
35741,0
35966,0
36191,0
36415,0
36640,0
36865,0
37090,0
37314,0
37539,0
37764,0
37989,0
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
set output "evileye/histogram-Latency-mixed-up-objectSize=0-up.png"
plot [:44733] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

