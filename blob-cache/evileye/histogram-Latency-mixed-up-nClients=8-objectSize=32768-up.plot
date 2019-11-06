
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
10,2
10,1
11,3
11,6
12,14
12,25
13,32
13,83
14,90
14,130
15,134
15,213
16,224
16,336
17,353
17,402
18,467
18,496
19,563
19,582
20,662
20,635
21,711
21,687
22,714
22,674
23,624
23,630
24,620
24,566
25,539
25,509
26,497
26,467
27,425
27,373
28,377
28,268
29,275
29,261
30,259
30,179
31,197
31,195
32,150
32,160
33,125
33,106
34,115
34,95
35,100
35,93
36,73
36,82
37,57
37,70
38,76
38,61
39,41
39,40
40,34
40,41
41,39
41,23
42,24
42,22
43,20
43,13
44,23
44,16
45,13
45,14
46,13
46,9
47,15
47,5
48,8
48,5
49,15
49,5
50,7
50,5
51,5
51,6
52,4
52,5
53,5
53,0
54,5
54,5
55,4
55,3
56,4
56,2
57,2
57,2
58,2
58,1
59,0
59,0
60,2
60,0
61,0
61,2
62,3
62,4
63,3
63,1
64,0
64,0
65,1
65,1
66,0
66,1
67,0
67,1
68,1
68,0
69,0
69,0
70,1
70,0
71,0
71,0
72,2
72,0
73,1
73,0
74,1
74,0
75,0
75,0
76,0
76,0
77,1
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
84,0
85,0
85,0
86,1
86,0
87,0
87,1
88,2
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
94,1
95,0
95,0
96,0
96,0
97,0
97,0
98,0
98,0
99,0
99,12
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
