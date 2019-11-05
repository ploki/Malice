
set title "Histogram of upstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,0
6,0
7,0
8,0
9,0
10,4
11,9
12,45
13,109
14,254
15,373
16,612
17,838
18,975
19,1294
20,1355
21,1428
22,1293
23,1319
24,1181
25,1014
26,944
27,782
28,567
29,516
30,407
31,342
32,290
33,218
35,201
36,165
37,154
38,131
39,104
40,73
41,72
42,50
43,40
44,33
45,32
46,25
47,19
48,15
49,18
50,13
51,10
52,9
53,7
54,10
55,6
56,6
57,4
58,2
59,1
60,1
61,4
62,6
63,3
64,0
65,2
66,1
67,2
69,0
70,1
71,1
72,1
73,1
74,1
75,0
76,1
77,0
78,1
79,0
80,0
81,0
82,0
83,0
84,0
85,1
86,0
87,1
88,1
89,1
90,0
91,0
92,0
93,0
94,1
95,0
96,0
97,0
98,0
99,0
100,0
101,0
103,0
104,0
105,0
106,0
107,0
108,0
109,1
110,0
111,1
112,0
113,0
114,0
115,0
116,1
117,1
118,0
119,0
120,1
121,0
122,0
123,1
124,0
125,0
126,0
127,0
128,0
129,1
130,0
131,0
132,0
133,0
134,0
135,0
137,1
138,1
139,0
140,0
141,0
142,0
143,1
144,0
145,0
146,0
147,1
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
163,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-up.png"
plot [:205] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

