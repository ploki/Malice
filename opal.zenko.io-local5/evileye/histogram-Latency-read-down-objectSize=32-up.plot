
set title "Histogram of upstream latency"
$histo << EOD
0,0
1,0
2,0
4,0
5,0
7,0
8,0
10,0
11,0
13,0
14,0
16,0
17,0
19,0
20,0
22,0
23,0
25,0
26,0
28,0
29,0
31,0
32,0
34,0
35,0
37,0
38,0
40,0
41,0
42,1
44,1
45,0
47,0
48,0
50,1
51,0
53,0
54,1
56,0
57,0
59,2
60,2
62,1
63,0
65,0
66,1
68,0
69,0
71,1
72,0
74,0
75,1
77,0
78,0
80,0
81,0
83,0
84,0
85,0
87,0
88,0
90,0
91,0
93,0
94,0
96,0
97,0
99,0
100,0
102,0
103,0
105,0
106,0
108,0
109,0
111,0
112,0
114,0
115,0
117,1
118,0
120,1
121,0
123,0
124,0
126,0
127,0
128,0
130,0
131,0
133,0
134,1
136,0
137,0
139,0
140,1
142,0
143,0
145,0
146,0
148,0
149,0
151,0
152,0
154,0
155,0
157,0
158,0
160,0
161,0
163,0
164,0
166,0
167,0
168,0
170,0
171,0
173,0
174,0
176,0
177,0
179,0
180,0
182,0
183,0
185,0
186,0
188,0
189,0
191,0
192,0
194,0
195,0
197,0
198,0
200,0
201,0
203,0
204,0
206,0
207,0
209,0
210,0
211,0
213,0
214,0
216,0
217,0
219,0
220,0
222,0
223,0
225,0
226,0
228,0
229,0
231,0
232,0
234,0
235,0
237,0
238,0
240,0
241,0
243,0
244,0
246,0
247,0
249,0
250,0
252,0
253,0
254,0
256,0
257,0
259,0
260,0
262,0
263,0
265,0
266,0
268,0
269,0
271,0
272,0
274,0
275,0
277,0
278,0
280,0
281,0
283,0
284,0
286,0
287,0
289,0
290,0
292,0
293,0
295,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-objectSize=32-up.png"
plot [:295] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

