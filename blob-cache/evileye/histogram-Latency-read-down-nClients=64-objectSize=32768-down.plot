
set title "Histogram of downstream latency"
$histo << EOD
0,0
2,0
5,0
7,0
10,0
12,0
15,2
17,11
20,16
22,40
25,63
27,89
30,104
32,177
35,224
37,302
40,289
42,416
45,465
47,487
50,601
52,658
55,747
58,852
60,812
63,944
65,1017
68,1048
70,1121
73,1140
75,1187
78,1203
80,1208
83,1218
85,1286
88,1200
90,1287
93,1295
95,1258
98,1268
100,1258
103,1231
105,1218
108,1197
110,1151
113,1197
116,1143
118,1106
121,1048
123,929
126,1011
128,1026
131,891
133,902
136,910
138,835
141,762
143,798
146,755
148,686
151,668
153,606
156,550
158,563
161,519
163,581
166,455
169,499
171,438
174,417
176,365
179,385
181,325
184,345
186,290
189,282
191,289
194,256
196,243
199,236
201,210
204,208
206,192
209,179
211,155
214,137
216,163
219,123
221,119
224,117
227,121
229,89
232,84
234,92
237,80
239,80
242,70
244,70
247,57
249,48
252,48
254,42
257,35
259,45
262,46
264,40
267,32
269,32
272,19
274,35
277,28
280,23
282,27
285,22
287,16
290,23
292,16
295,22
297,19
300,11
302,13
305,10
307,6
310,7
312,12
315,6
317,6
320,7
322,9
325,12
327,11
330,5
332,6
335,6
338,3
340,4
343,3
345,5
348,5
350,4
353,5
355,4
358,2
360,3
363,3
365,6
368,2
370,5
373,1
375,1
378,0
380,2
383,0
385,1
388,2
391,0
393,2
396,2
398,1
401,1
403,1
406,2
408,0
411,1
413,1
416,0
418,1
421,2
423,2
426,0
428,1
431,0
433,0
436,0
438,0
441,0
443,0
446,0
449,0
451,1
454,0
456,2
459,0
461,0
464,0
466,0
469,0
471,0
474,0
476,0
479,0
481,1
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
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=32768-down.png"
plot [:502] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

