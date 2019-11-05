
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
13,0
14,0
14,0
15,0
15,0
16,0
16,0
17,4
17,8
18,15
18,38
19,50
19,108
20,105
20,198
21,220
21,297
22,298
22,441
23,442
23,506
24,547
24,563
25,597
25,706
26,727
26,732
27,754
27,764
28,786
28,837
29,776
29,774
30,744
30,704
31,745
31,667
32,659
32,623
33,609
33,589
34,545
34,535
35,547
35,491
36,493
36,431
37,391
37,340
38,336
38,299
39,326
39,271
40,254
40,239
41,235
41,200
42,169
42,164
43,182
43,146
44,113
44,129
45,130
45,99
46,111
46,88
47,79
47,64
48,60
48,70
49,74
49,57
50,51
50,40
51,46
51,43
52,41
52,24
53,25
53,27
54,27
54,24
55,22
55,11
56,18
56,14
57,19
57,14
58,12
58,10
59,15
59,6
60,11
60,10
61,5
61,10
62,4
62,5
63,7
63,2
64,7
64,9
65,4
65,3
66,1
66,2
67,3
67,5
68,1
68,1
69,1
69,1
70,0
70,3
71,1
71,1
72,2
72,0
73,1
73,1
74,1
74,0
75,2
75,1
76,1
76,2
77,0
77,1
78,1
78,0
79,0
79,1
80,2
80,1
81,0
81,0
82,1
82,2
83,0
83,0
84,1
84,0
85,0
85,1
86,0
86,0
87,0
87,0
88,0
88,0
89,0
89,0
90,0
90,1
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
set output "evileye/histogram-Latency-read-down-nClients=8-objectSize=0-down.png"
plot [:100] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

