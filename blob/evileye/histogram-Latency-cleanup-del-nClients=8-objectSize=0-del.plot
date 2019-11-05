
set title "Histogram of delstream latency"
$histo << EOD
0,0
1,0
2,0
4,0
5,0
6,23
8,32
9,34
11,52
12,211
13,846
15,2684
16,5045
17,7682
19,10286
20,11311
22,11433
23,10311
24,8935
26,6893
27,5304
29,4014
30,3023
31,2223
33,1655
34,1259
35,919
37,667
38,504
40,321
41,225
42,173
44,129
45,86
46,62
48,39
49,39
51,25
52,23
53,15
55,8
56,4
58,5
59,7
60,3
62,2
63,2
64,2
66,5
67,1
69,3
70,1
71,5
73,2
74,1
76,1
77,4
78,4
80,2
81,2
82,2
84,7
85,2
87,4
88,1
89,1
91,1
92,0
93,0
95,1
96,0
98,0
99,0
100,0
102,0
103,0
105,0
106,0
107,0
109,0
110,0
111,0
113,0
114,0
116,0
117,0
118,0
120,0
121,0
122,0
124,0
125,0
127,0
128,0
129,0
131,0
132,0
134,0
135,0
136,0
138,0
139,0
140,0
142,0
143,0
145,0
146,0
147,0
149,0
150,0
152,0
153,0
154,0
156,0
157,0
158,0
160,0
161,0
163,0
164,0
165,0
167,0
168,0
169,0
171,0
172,0
174,0
175,0
176,0
178,0
179,0
181,0
182,0
183,0
185,0
186,0
187,0
189,0
190,0
192,0
193,0
194,0
196,0
197,0
198,0
200,0
201,0
203,0
204,0
205,0
207,0
208,0
210,0
211,0
212,0
214,0
215,0
216,0
218,0
219,0
221,0
222,0
223,0
225,0
226,0
228,0
229,0
230,1
232,0
233,0
234,0
236,0
237,0
239,0
240,0
241,0
243,0
244,0
245,0
247,0
248,0
250,0
251,0
252,1
254,0
255,0
257,0
258,0
259,0
261,0
262,0
263,0
265,0
266,0
268,0
269,0
270,0
272,0
273,0
275,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=0-del.png"
plot [:275] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

