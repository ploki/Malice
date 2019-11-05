
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
9,1
9,0
10,5
10,30
11,48
11,168
12,238
12,581
13,779
13,1269
14,1657
14,2380
15,2906
15,3829
16,4221
16,5020
17,5272
17,5908
18,5935
18,6026
19,6081
19,5748
20,5588
20,5082
21,4820
21,4180
22,3959
22,3429
23,3290
23,2754
24,2503
24,2220
25,2033
25,1589
26,1521
26,1393
27,1252
27,1068
28,926
28,826
29,786
29,638
30,685
30,567
31,502
31,419
32,419
32,394
33,358
33,309
34,310
34,229
35,243
35,195
36,199
36,146
37,144
37,120
38,137
38,100
39,85
39,89
40,101
40,67
41,68
41,61
42,54
42,52
43,47
43,29
44,31
44,35
45,31
45,33
46,34
46,23
47,14
47,21
48,16
48,19
49,15
49,11
50,7
50,10
51,7
51,2
52,4
52,2
53,7
53,2
54,5
54,3
55,6
55,3
56,3
56,5
57,0
57,1
58,2
58,4
59,0
59,0
60,2
60,1
61,2
61,1
62,1
62,1
63,2
63,4
64,0
64,1
65,0
65,1
66,0
66,0
67,0
67,0
68,1
68,2
69,1
69,0
70,1
70,0
71,0
71,0
72,0
72,0
73,1
73,0
74,2
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
93,1
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
99,1
99,58
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=32768-up.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

