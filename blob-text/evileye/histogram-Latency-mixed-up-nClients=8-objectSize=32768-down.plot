
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
5,8
6,15
6,206
7,376
7,883
8,1202
8,1564
9,1743
9,1822
10,1910
10,1746
11,1716
11,1505
12,1469
12,1141
13,1028
13,872
14,773
14,590
15,522
15,386
16,310
16,255
17,237
17,187
18,145
18,122
19,100
19,86
20,81
20,58
21,67
21,50
22,36
22,29
23,31
23,23
24,32
24,16
25,18
25,13
26,14
26,10
27,13
27,10
28,7
28,9
29,10
29,4
30,4
30,4
31,5
31,2
32,6
32,3
33,0
33,1
34,1
34,0
35,4
35,1
36,0
36,1
37,1
37,0
38,1
38,0
39,0
39,1
40,0
40,0
41,0
41,1
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
50,2
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
60,1
61,0
61,0
62,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

