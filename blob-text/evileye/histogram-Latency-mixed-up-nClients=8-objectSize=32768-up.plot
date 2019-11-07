
set title "Histogram of upstream latency"
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
7,0
7,0
8,0
8,0
9,0
9,0
10,0
10,3
11,2
11,17
12,21
12,46
13,86
13,117
14,153
14,270
15,368
15,438
16,515
16,625
17,670
17,839
18,839
18,982
19,1015
19,1048
20,1040
20,1128
21,1013
21,1071
22,1043
22,895
23,886
23,835
24,792
24,704
25,675
25,558
26,548
26,459
27,400
27,390
28,336
28,283
29,268
29,238
30,210
30,170
31,151
31,115
32,116
32,102
33,98
33,78
34,74
34,59
35,53
35,48
36,48
36,36
37,37
37,36
38,26
38,30
39,28
39,14
40,29
40,20
41,14
41,14
42,13
42,5
43,7
43,7
44,7
44,2
45,8
45,7
46,7
46,5
47,7
47,4
48,6
48,0
49,3
49,2
50,4
50,4
51,3
51,2
52,1
52,3
53,3
53,1
54,0
54,2
55,1
55,1
56,0
56,1
57,1
57,0
58,0
58,1
59,1
59,0
60,1
60,0
61,1
61,0
62,0
62,0
63,0
63,0
64,0
64,0
65,0
65,1
66,1
66,0
67,0
67,0
68,0
68,0
69,0
69,1
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
79,1
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
84,1
85,0
85,0
86,0
86,0
87,0
87,0
88,0
88,1
89,0
89,0
90,0
90,0
91,1
91,0
92,0
92,0
93,0
93,2
94,0
94,0
95,1
95,0
96,0
96,0
97,0
97,1
98,0
98,0
99,0
99,19
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

