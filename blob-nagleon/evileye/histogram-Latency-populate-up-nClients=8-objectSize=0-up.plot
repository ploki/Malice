
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
6,7
7,7
7,147
8,267
8,900
9,1367
9,2680
10,3477
10,5242
11,6340
11,8352
12,9520
12,10760
13,11622
13,11625
14,11658
14,10794
15,10280
15,8706
16,7981
16,6473
17,5846
17,4652
18,3997
18,3219
19,2810
19,2105
20,1865
20,1438
21,1205
21,1008
22,822
22,652
23,553
23,405
24,406
24,330
25,275
25,256
26,192
26,187
27,143
27,125
28,111
28,98
29,94
29,55
30,70
30,65
31,65
31,40
32,32
32,39
33,25
33,36
34,28
34,19
35,20
35,11
36,11
36,11
37,12
37,8
38,11
38,11
39,8
39,7
40,7
40,9
41,6
41,5
42,3
42,4
43,2
43,1
44,2
44,1
45,0
45,1
46,1
46,5
47,1
47,2
48,4
48,2
49,3
49,0
50,0
50,3
51,2
51,0
52,1
52,0
53,0
53,0
54,0
54,3
55,0
55,1
56,1
56,0
57,1
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
63,1
64,0
64,0
65,1
65,0
66,0
66,1
67,0
67,0
68,0
68,0
69,0
69,0
70,0
70,0
71,0
71,1
72,0
72,0
73,0
73,0
74,0
74,0
75,0
75,1
76,0
76,1
77,2
77,1
78,1
78,0
79,2
79,0
80,0
80,1
81,0
81,1
82,0
82,0
83,1
83,1
84,0
84,0
85,1
85,2
86,3
86,0
87,1
87,0
88,0
88,1
89,0
89,0
90,1
90,1
91,1
91,0
92,1
92,0
93,1
93,0
94,1
94,0
95,1
95,0
96,0
96,0
97,0
97,0
98,0
98,0
99,0
99,43
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=0-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

