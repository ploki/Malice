
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
4,45
5,71
5,831
6,1320
6,2330
7,2993
7,3007
8,2957
8,2572
9,2345
9,1921
10,1676
10,1262
11,1059
11,817
12,738
12,506
13,480
13,344
14,294
14,226
15,194
15,131
16,122
16,112
17,111
17,85
18,63
18,55
19,49
19,36
20,34
20,17
21,28
21,21
22,19
22,20
23,20
23,13
24,13
24,6
25,7
25,9
26,4
26,13
27,8
27,5
28,5
28,4
29,5
29,3
30,4
30,6
31,1
31,3
32,1
32,2
33,2
33,1
34,0
34,2
35,2
35,0
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
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

