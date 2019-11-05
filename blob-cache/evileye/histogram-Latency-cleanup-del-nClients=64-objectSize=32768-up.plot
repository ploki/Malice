
set title "Histogram of upstream latency"
$histo << EOD
0,0
2,0
5,0
7,0
10,0
12,0
15,0
17,0
20,0
22,0
25,0
27,0
30,0
32,0
35,0
37,0
40,0
42,0
45,0
47,0
50,0
52,0
55,0
58,0
60,0
63,0
65,0
68,0
70,0
73,0
75,0
78,0
80,0
83,0
85,1
88,3
90,3
93,1
95,1
98,0
100,0
103,1
105,0
108,0
110,0
113,1
116,1
118,0
121,2
123,4
126,0
128,0
131,1
133,0
136,1
138,1
141,1
143,0
146,1
148,0
151,0
153,1
156,0
158,0
161,0
163,2
166,0
169,2
171,1
174,0
176,0
179,0
181,0
184,1
186,2
189,0
191,2
194,0
196,0
199,0
201,0
204,0
206,1
209,1
211,0
214,1
216,1
219,0
221,0
224,2
227,0
229,1
232,0
234,0
237,0
239,0
242,0
244,0
247,0
249,1
252,0
254,1
257,0
259,0
262,0
264,0
267,0
269,0
272,0
274,0
277,0
280,0
282,0
285,0
287,0
290,0
292,0
295,0
297,0
300,0
302,0
305,0
307,0
310,0
312,0
315,0
317,0
320,0
322,0
325,0
327,0
330,0
332,0
335,0
338,0
340,0
343,0
345,0
348,0
350,0
353,0
355,0
358,0
360,0
363,0
365,0
368,0
370,0
373,0
375,0
378,0
380,0
383,0
385,0
388,0
391,0
393,0
396,0
398,0
401,0
403,0
406,0
408,0
411,0
413,0
416,0
418,0
421,0
423,0
426,0
428,0
431,0
433,0
436,0
438,0
441,0
443,0
446,0
449,0
451,0
454,0
456,0
459,0
461,0
464,0
466,0
469,0
471,0
474,0
476,0
479,0
481,0
484,0
486,0
489,0
491,0
494,0
496,0
499,0
502,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=32768-up.png"
plot [:502] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

