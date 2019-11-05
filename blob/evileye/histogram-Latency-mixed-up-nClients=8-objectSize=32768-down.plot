
set title "Histogram of downstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
5,0
6,0
7,0
8,0
10,0
11,0
12,0
13,0
15,0
16,0
17,0
18,0
20,0
21,1
22,1
23,8
25,21
26,72
27,133
29,220
30,296
31,417
32,495
34,546
35,560
36,644
37,542
39,605
40,602
41,571
42,553
44,496
45,425
46,376
47,349
49,289
50,283
51,231
52,188
54,161
55,145
56,110
58,104
59,92
60,70
61,60
63,47
64,41
65,36
66,32
68,31
69,22
70,14
71,14
73,14
74,13
75,11
76,8
78,6
79,6
80,3
81,6
83,5
84,5
85,2
87,2
88,2
89,2
90,2
92,1
93,1
94,2
95,0
97,0
98,0
99,1
100,1
102,0
103,0
104,0
105,0
107,1
108,1
109,0
110,1
112,0
113,0
114,0
116,0
117,0
118,0
119,0
121,0
122,0
123,0
124,0
126,0
127,1
128,0
129,0
131,0
132,0
133,0
134,0
136,0
137,0
138,0
140,0
141,0
142,0
143,0
145,0
146,0
147,0
148,0
150,0
151,0
152,0
153,0
155,0
156,0
157,0
158,0
160,0
161,0
162,0
163,0
165,0
166,0
167,0
169,0
170,0
171,0
172,0
174,0
175,0
176,0
177,0
179,0
180,0
181,0
182,0
184,0
185,0
186,0
187,0
189,0
190,0
191,0
192,0
194,0
195,0
196,0
198,0
199,0
200,0
201,0
203,0
204,0
205,0
206,0
208,0
209,0
210,0
211,0
213,0
214,0
215,0
216,0
218,0
219,0
220,1
221,0
223,0
224,0
225,0
227,0
228,0
229,0
230,0
232,0
233,0
234,0
235,0
237,0
238,0
239,0
240,0
242,0
243,0
244,0
245,0
247,0
248,0
249,0
251,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=32768-down.png"
plot [:251] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
