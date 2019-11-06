
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
6,2
7,2
7,11
8,10
8,42
9,63
9,134
10,156
10,267
11,417
11,540
12,647
12,814
13,858
13,1038
14,1189
14,1222
15,1313
15,1266
16,1369
16,1330
17,1276
17,1204
18,1096
18,1010
19,937
19,829
20,768
20,623
21,575
21,480
22,452
22,398
23,308
23,262
24,281
24,218
25,188
25,152
26,117
26,99
27,108
27,88
28,74
28,66
29,57
29,40
30,35
30,30
31,34
31,25
32,23
32,14
33,18
33,15
34,21
34,9
35,11
35,5
36,10
36,6
37,10
37,5
38,3
38,5
39,5
39,2
40,4
40,4
41,6
41,1
42,2
42,0
43,4
43,1
44,0
44,1
45,2
45,1
46,1
46,1
47,2
47,1
48,1
48,1
49,0
49,0
50,0
50,1
51,0
51,1
52,1
52,1
53,0
53,0
54,1
54,0
55,0
55,1
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
65,1
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
84,1
85,0
85,0
86,0
86,1
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
93,1
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
99,30
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=0-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
