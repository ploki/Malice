
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
20,1
22,0
25,0
27,3
30,4
32,2
35,7
37,15
40,15
42,26
45,20
47,34
50,46
52,66
55,94
58,104
60,134
63,158
65,170
68,240
70,244
73,278
75,328
78,387
80,438
83,473
85,506
88,561
90,564
93,615
95,634
98,658
100,724
103,706
105,770
108,771
110,742
113,760
116,769
118,740
121,771
123,698
126,714
128,642
131,675
133,640
136,592
138,605
141,597
143,586
146,559
148,513
151,482
153,460
156,427
158,437
161,378
163,374
166,335
169,317
171,324
174,311
176,297
179,235
181,235
184,249
186,209
189,203
191,157
194,194
196,155
199,156
201,157
204,152
206,132
209,118
211,110
214,104
216,94
219,83
221,91
224,77
227,66
229,57
232,54
234,65
237,59
239,41
242,50
244,33
247,51
249,41
252,38
254,28
257,30
259,34
262,35
264,27
267,23
269,22
272,19
274,17
277,19
280,14
282,12
285,16
287,9
290,16
292,6
295,13
297,17
300,13
302,8
305,8
307,11
310,5
312,10
315,5
317,7
320,7
322,1
325,3
327,5
330,5
332,4
335,5
338,2
340,2
343,4
345,5
348,2
350,4
353,1
355,5
358,4
360,6
363,3
365,0
368,1
370,2
373,6
375,3
378,1
380,2
383,1
385,0
388,0
391,0
393,0
396,0
398,4
401,0
403,1
406,4
408,0
411,0
413,0
416,0
418,2
421,0
423,0
426,2
428,1
431,0
433,0
436,0
438,1
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
496,1
499,0
502,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=32768-up.png"
plot [:502] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

