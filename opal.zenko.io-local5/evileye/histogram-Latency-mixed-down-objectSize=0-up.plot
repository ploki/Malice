
set title "Histogram of upstream latency"
$histo << EOD
0,5
224,13
449,6
674,6
899,5
1123,8
1348,8
1573,4
1798,12
2023,26
2247,17
2472,27
2697,30
2922,57
3147,70
3371,72
3596,71
3821,83
4046,99
4270,121
4495,124
4720,130
4945,160
5170,170
5394,178
5619,204
5844,204
6069,205
6294,244
6518,248
6743,279
6968,284
7193,318
7418,296
7642,306
7867,317
8092,320
8317,326
8541,342
8766,348
8991,329
9216,306
9441,289
9665,323
9890,349
10115,309
10340,288
10565,263
10789,302
11014,267
11239,246
11464,256
11689,224
11913,215
12138,247
12363,230
12588,230
12812,185
13037,208
13262,178
13487,174
13712,135
13936,154
14161,128
14386,126
14611,138
14836,143
15060,99
15285,111
15510,123
15735,93
15960,108
16184,80
16409,55
16634,70
16859,93
17083,70
17308,72
17533,64
17758,60
17983,65
18207,52
18432,58
18657,55
18882,48
19107,42
19331,33
19556,40
19781,46
20006,28
20231,38
20455,28
20680,29
20905,32
21130,27
21354,32
21579,37
21804,26
22029,28
22254,38
22478,31
22703,33
22928,36
23153,37
23378,29
23602,29
23827,27
24052,29
24277,27
24501,28
24726,29
24951,26
25176,24
25401,17
25625,23
25850,22
26075,13
26300,22
26525,22
26749,25
26974,12
27199,22
27424,19
27649,20
27873,18
28098,20
28323,16
28548,13
28772,14
28997,14
29222,9
29447,18
29672,9
29896,12
30121,7
30346,12
30571,8
30796,4
31020,7
31245,4
31470,5
31695,7
31920,4
32144,3
32369,7
32594,1
32819,2
33043,4
33268,1
33493,3
33718,2
33943,2
34167,4
34392,1
34617,0
34842,0
35067,2
35291,2
35516,0
35741,1
35966,0
36191,1
36415,0
36640,0
36865,0
37090,0
37314,0
37539,0
37764,0
37989,1
38214,0
38438,1
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
set output "evileye/histogram-Latency-mixed-down-objectSize=0-up.png"
plot [:44733] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

