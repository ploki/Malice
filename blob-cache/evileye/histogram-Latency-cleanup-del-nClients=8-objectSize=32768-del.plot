
set title "Histogram of delstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,2
6,5
7,69
8,445
9,1635
10,3931
11,7001
12,10208
13,13282
14,14834
15,14059
16,12011
17,9534
18,7248
19,5380
20,3862
21,2824
22,2097
23,1436
24,1043
25,853
26,596
27,455
28,348
29,263
30,222
31,171
32,139
33,93
35,75
36,55
37,59
38,44
39,30
40,26
41,19
42,24
43,21
44,10
45,17
46,7
47,6
48,3
49,5
50,1
51,3
52,3
53,3
54,1
55,0
56,4
57,1
58,2
59,1
60,3
61,2
62,0
63,1
64,1
65,0
66,0
67,0
69,0
70,1
71,3
72,3
73,4
74,3
75,3
76,1
77,2
78,3
79,0
80,2
81,1
82,2
83,1
84,0
85,0
86,0
87,3
88,0
89,1
90,0
91,4
92,5
93,1
94,1
95,0
96,1
97,2
98,1
99,1
100,5
101,0
103,3
104,1
105,1
106,1
107,1
108,0
109,0
110,0
111,0
112,0
113,0
114,0
115,0
116,1
117,0
118,0
119,0
120,0
121,3
122,0
123,0
124,0
125,0
126,0
127,0
128,0
129,0
130,0
131,0
132,0
133,0
134,0
135,0
137,0
138,0
139,0
140,0
141,0
142,0
143,0
144,0
145,0
146,0
147,0
148,0
149,0
150,0
151,0
152,0
153,0
154,0
155,0
156,0
157,0
158,0
159,0
160,0
161,0
162,0
163,0
164,0
165,0
166,0
167,0
168,0
169,0
171,0
172,0
173,0
174,0
175,0
176,0
177,0
178,0
179,0
180,0
181,0
182,0
183,0
184,0
185,0
186,0
187,0
188,0
189,0
190,0
191,0
192,0
193,0
194,0
195,0
196,0
197,0
198,0
199,0
200,0
201,0
202,0
203,0
204,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=32768-del.png"
plot [:205] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

