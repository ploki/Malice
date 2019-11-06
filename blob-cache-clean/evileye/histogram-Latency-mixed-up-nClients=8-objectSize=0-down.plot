
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
6,0
7,1
7,1
8,2
8,56
9,106
9,341
10,586
10,887
11,1152
11,1532
12,1619
12,1679
13,1819
13,1723
14,1591
14,1475
15,1431
15,1205
16,1124
16,921
17,816
17,677
18,594
18,444
19,427
19,316
20,287
20,232
21,194
21,157
22,135
22,117
23,113
23,100
24,74
24,67
25,48
25,41
26,35
26,35
27,27
27,25
28,21
28,15
29,19
29,20
30,13
30,11
31,11
31,12
32,5
32,6
33,5
33,9
34,4
34,5
35,7
35,1
36,2
36,2
37,3
37,3
38,4
38,2
39,0
39,2
40,3
40,2
41,1
41,1
42,2
42,1
43,2
43,0
44,0
44,1
45,1
45,0
46,0
46,2
47,0
47,1
48,0
48,0
49,0
49,1
50,0
50,0
51,0
51,0
52,1
52,0
53,0
53,0
54,0
54,0
55,0
55,0
56,1
56,1
57,0
57,0
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
99,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
