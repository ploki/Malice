
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
5,32
6,60
6,394
7,678
7,1151
8,1618
8,1720
9,1867
9,1901
10,1817
10,1613
11,1574
11,1322
12,1169
12,883
13,867
13,669
14,624
14,515
15,367
15,291
16,260
16,211
17,179
17,131
18,124
18,106
19,84
19,81
20,64
20,51
21,48
21,38
22,36
22,22
23,26
23,19
24,15
24,20
25,10
25,9
26,8
26,12
27,16
27,6
28,3
28,6
29,6
29,3
30,3
30,2
31,4
31,2
32,2
32,1
33,2
33,1
34,0
34,1
35,0
35,1
36,1
36,0
37,1
37,0
38,2
38,1
39,0
39,0
40,0
40,0
41,0
41,0
42,0
42,0
43,0
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
61,1
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
84,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
