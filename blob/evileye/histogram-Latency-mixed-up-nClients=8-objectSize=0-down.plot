
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
7,0
7,0
8,0
8,0
9,0
9,0
10,0
10,0
11,0
11,0
12,0
12,0
13,0
13,1
14,0
14,0
15,0
15,3
16,0
16,0
17,1
17,1
18,1
18,8
19,6
19,20
20,21
20,50
21,62
21,110
22,133
22,156
23,181
23,235
24,252
24,297
25,312
25,322
26,357
26,402
27,384
27,410
28,445
28,418
29,421
29,459
30,431
30,417
31,379
31,401
32,371
32,391
33,350
33,362
34,352
34,308
35,323
35,260
36,250
36,258
37,242
37,216
38,168
38,202
39,179
39,140
40,132
40,126
41,113
41,103
42,102
42,95
43,81
43,72
44,81
44,57
45,50
45,48
46,40
46,33
47,46
47,27
48,33
48,31
49,32
49,18
50,33
50,19
51,15
51,21
52,20
52,14
53,20
53,14
54,4
54,7
55,13
55,11
56,12
56,11
57,11
57,5
58,2
58,7
59,3
59,6
60,3
60,6
61,1
61,7
62,1
62,2
63,0
63,5
64,2
64,1
65,0
65,1
66,2
66,1
67,0
67,0
68,0
68,3
69,1
69,0
70,0
70,0
71,0
71,0
72,0
72,1
73,1
73,1
74,1
74,0
75,1
75,0
76,0
76,0
77,0
77,1
78,0
78,0
79,0
79,0
80,0
80,1
81,0
81,1
82,0
82,0
83,0
83,0
84,0
84,0
85,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

