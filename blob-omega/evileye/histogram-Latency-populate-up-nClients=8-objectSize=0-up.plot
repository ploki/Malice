
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
6,6
7,10
7,107
8,177
8,611
9,949
9,1903
10,2469
10,3790
11,4552
11,5973
12,6718
12,8048
13,8979
13,9664
14,10344
14,10090
15,9957
15,9159
16,8649
16,7353
17,6915
17,5722
18,5129
18,4095
19,3753
19,3038
20,2690
20,2095
21,1817
21,1368
22,1222
22,985
23,866
23,620
24,559
24,474
25,426
25,350
26,266
26,201
27,206
27,177
28,159
28,133
29,126
29,84
30,92
30,77
31,64
31,66
32,52
32,37
33,32
33,27
34,25
34,27
35,28
35,17
36,15
36,19
37,12
37,10
38,13
38,13
39,6
39,4
40,5
40,14
41,9
41,1
42,9
42,6
43,5
43,1
44,3
44,3
45,4
45,3
46,4
46,2
47,1
47,5
48,2
48,1
49,2
49,3
50,2
50,1
51,1
51,0
52,3
52,3
53,1
53,0
54,1
54,0
55,0
55,1
56,1
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
62,1
62,2
63,1
63,0
64,0
64,0
65,1
65,0
66,0
66,1
67,1
67,1
68,1
68,1
69,0
69,1
70,2
70,1
71,3
71,0
72,0
72,0
73,0
73,0
74,1
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
79,2
80,0
80,1
81,1
81,0
82,0
82,0
83,1
83,1
84,0
84,0
85,0
85,0
86,0
86,0
87,1
87,1
88,0
88,0
89,0
89,0
90,0
90,0
91,0
91,0
92,0
92,1
93,0
93,0
94,0
94,0
95,0
95,0
96,0
96,0
97,1
97,0
98,0
98,0
99,0
99,57
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=0-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
