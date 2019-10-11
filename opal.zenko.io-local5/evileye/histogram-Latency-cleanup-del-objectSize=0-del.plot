
set title "Histogram of delstream latency"
$histo << EOD
0,278
224,104
449,84
674,110
899,115
1123,142
1348,184
1573,205
1798,240
2023,276
2247,299
2472,377
2697,429
2922,471
3147,483
3371,554
3596,522
3821,649
4046,720
4270,769
4495,843
4720,1005
4945,1048
5170,1137
5394,1294
5619,1379
5844,1364
6069,1557
6294,1616
6518,1682
6743,1833
6968,1937
7193,2054
7418,2234
7642,2223
7867,2363
8092,2519
8317,2505
8541,2641
8766,2730
8991,2803
9216,2866
9441,2880
9665,2941
9890,2977
10115,2942
10340,2868
10565,2805
10789,2908
11014,2802
11239,2909
11464,2791
11689,2720
11913,2746
12138,2629
12363,2553
12588,2362
12812,2192
13037,2151
13262,2013
13487,1956
13712,1843
13936,1709
14161,1585
14386,1456
14611,1363
14836,1204
15060,1152
15285,1022
15510,973
15735,929
15960,912
16184,832
16409,726
16634,661
16859,641
17083,576
17308,581
17533,541
17758,510
17983,443
18207,399
18432,410
18657,356
18882,340
19107,325
19331,292
19556,304
19781,276
20006,272
20231,251
20455,262
20680,256
20905,269
21130,234
21354,222
21579,218
21804,176
22029,181
22254,171
22478,159
22703,171
22928,164
23153,139
23378,131
23602,150
23827,136
24052,143
24277,134
24501,114
24726,119
24951,128
25176,84
25401,95
25625,90
25850,66
26075,84
26300,63
26525,66
26749,61
26974,54
27199,56
27424,44
27649,50
27873,39
28098,64
28323,38
28548,39
28772,36
28997,41
29222,41
29447,35
29672,30
29896,30
30121,21
30346,24
30571,21
30796,22
31020,25
31245,12
31470,17
31695,14
31920,8
32144,17
32369,10
32594,10
32819,15
33043,9
33268,4
33493,6
33718,9
33943,8
34167,3
34392,5
34617,4
34842,4
35067,8
35291,6
35516,0
35741,0
35966,0
36191,1
36415,0
36640,1
36865,1
37090,0
37314,0
37539,0
37764,0
37989,3
38214,1
38438,0
38663,0
38888,1
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
set output "evileye/histogram-Latency-cleanup-del-objectSize=0-del.png"
plot [:44733] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

