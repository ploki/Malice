
set title "Histogram of downstream latency"
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
20,1
22,1
23,5
25,12
26,38
28,21
29,103
31,59
32,166
34,103
35,326
37,181
38,437
40,259
41,264
42,602
44,345
45,662
47,385
48,866
50,425
51,874
53,441
54,973
56,455
57,989
59,466
60,955
62,447
63,926
65,449
66,888
68,438
69,820
71,410
72,755
74,360
75,683
77,314
78,647
80,282
81,570
83,258
84,227
85,430
87,194
88,435
90,206
91,336
93,137
94,281
96,142
97,241
99,131
100,241
102,93
103,152
105,76
106,155
108,61
109,111
111,63
112,90
114,52
115,87
117,35
118,69
120,32
121,53
123,26
124,46
126,21
127,20
128,40
130,9
131,32
133,6
134,21
136,9
137,15
139,7
140,21
142,13
143,15
145,9
146,13
148,9
149,9
151,4
152,7
154,6
155,3
157,5
158,10
160,2
161,2
163,2
164,1
166,2
167,3
168,1
170,1
171,3
173,1
174,1
176,0
177,4
179,1
180,1
182,0
183,0
185,0
186,0
188,0
189,2
191,0
192,0
194,0
195,1
197,0
198,0
200,0
201,2
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
225,1
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
243,1
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
271,1
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
295,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-objectSize=32-down.png"
plot [:295] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

