
set title "Histogram of downstream latency"
$histo << EOD
0,0
0,0
1,0
1,0
2,0
2,0
3,0
3,0
4,0
4,0
5,0
5,0
6,0
6,2
7,1
7,11
8,8
8,87
9,168
9,510
10,747
10,1088
11,1393
11,1612
12,1719
12,1868
13,1845
13,1717
14,1671
14,1465
15,1391
15,1187
16,1063
16,851
17,725
17,584
18,518
18,447
19,415
19,301
20,240
20,193
21,166
21,121
22,142
22,93
23,100
23,69
24,69
24,61
25,56
25,41
26,43
26,34
27,28
27,22
28,24
28,16
29,18
29,18
30,10
30,12
31,10
31,15
32,4
32,4
33,11
33,5
34,2
34,6
35,2
35,2
36,3
36,2
37,5
37,2
38,2
38,2
39,1
39,0
40,1
40,0
41,1
41,2
42,1
42,1
43,0
43,0
44,1
44,0
45,0
45,0
46,0
46,0
47,0
47,0
48,0
48,1
49,1
49,0
50,0
50,0
51,0
51,0
52,0
52,0
53,0
53,0
54,0
54,0
55,0
55,0
56,0
56,0
57,0
57,1
58,0
58,0
59,0
59,0
60,0
60,0
61,0
61,0
62,0
62,0
63,0
63,0
64,0
64,0
65,0
65,0
66,0
66,0
67,0
67,0
68,0
68,0
69,0
69,0
70,0
70,0
71,0
71,0
72,0
72,0
73,0
73,0
74,0
74,0
75,0
75,0
76,0
76,0
77,0
77,0
78,0
78,0
79,0
79,0
80,0
80,0
81,0
81,0
82,0
82,0
83,0
83,0
84,0
84,0
85,0
85,0
86,0
86,0
87,0
87,0
88,0
88,0
89,0
89,0
90,0
90,0
91,0
91,0
92,0
92,0
93,0
93,0
94,0
94,0
95,0
95,0
96,0
96,0
97,0
97,0
98,0
98,0
99,0
99,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

