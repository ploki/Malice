
set title "Histogram of delstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,0
6,9
7,18
8,100
9,437
10,1106
11,2135
12,3267
13,4601
14,5042
15,4796
16,4167
17,3347
18,2427
19,1824
20,1338
21,943
22,674
23,513
24,353
25,261
26,175
27,135
28,97
29,72
30,56
31,31
32,29
33,26
34,24
35,19
36,10
37,20
38,13
39,11
40,11
41,7
42,9
43,6
44,1
45,2
46,7
47,0
48,3
49,3
50,3
51,2
52,4
53,2
54,4
55,3
56,3
57,0
58,0
59,1
60,4
61,0
62,2
63,0
64,0
65,0
66,1
67,1
68,2
69,0
70,0
71,1
72,0
73,0
74,0
75,0
76,0
77,0
78,0
79,0
80,0
81,0
82,0
83,1
84,0
85,2
86,1
87,0
88,1
89,1
90,0
91,0
92,1
93,0
94,0
95,0
96,0
97,0
98,0
99,0
100,0
101,0
102,0
103,0
104,0
105,0
106,0
107,0
108,0
109,0
110,0
111,0
112,0
113,0
114,0
115,0
116,0
117,0
118,0
119,0
120,0
121,0
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
136,0
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
170,0
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
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=1048576-del.png"
plot [:200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
