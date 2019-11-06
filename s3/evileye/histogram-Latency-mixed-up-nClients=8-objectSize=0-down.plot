
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
4,42
5,89
5,751
6,1358
6,2308
7,3014
7,2910
8,3040
8,2628
9,2295
9,1962
10,1627
10,1312
11,1063
11,835
12,680
12,558
13,446
13,352
14,299
14,196
15,205
15,146
16,132
16,103
17,112
17,67
18,71
18,67
19,60
19,20
20,34
20,26
21,22
21,22
22,21
22,23
23,17
23,13
24,12
24,7
25,8
25,6
26,4
26,11
27,8
27,5
28,7
28,5
29,6
29,2
30,5
30,3
31,2
31,2
32,1
32,1
33,4
33,0
34,2
34,0
35,2
35,1
36,0
36,0
37,1
37,1
38,0
38,1
39,0
39,0
40,0
40,1
41,0
41,0
42,0
42,0
43,1
43,0
44,0
44,0
45,0
45,0
46,0
46,0
47,0
47,0
48,0
48,0
49,0
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
99,19
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
