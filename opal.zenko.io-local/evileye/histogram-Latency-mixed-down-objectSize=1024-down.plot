
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
9,0
14,0
18,0
23,0
28,0
32,0
37,0
42,0
46,0
51,0
56,0
60,0
65,0
70,0
75,0
79,0
84,0
89,0
93,0
98,0
103,0
107,0
112,0
117,0
121,0
126,0
131,0
135,0
140,0
145,0
150,0
154,0
159,0
164,0
168,0
173,0
178,0
182,0
187,0
192,0
196,0
201,0
206,0
210,0
215,0
220,0
225,0
229,0
234,0
239,0
243,0
248,0
253,0
257,0
262,0
267,0
271,0
276,0
281,0
285,0
290,0
295,0
300,0
304,0
309,0
314,0
318,0
323,0
328,0
332,0
337,0
342,0
346,0
351,0
356,0
361,0
365,0
370,0
375,0
379,0
384,0
389,0
393,0
398,0
403,0
407,0
412,0
417,0
421,0
426,0
431,0
436,0
440,0
445,0
450,0
454,0
459,0
464,0
468,0
473,1
478,0
482,0
487,2
492,2
496,3
501,1
506,2
511,0
515,2
520,1
525,1
529,1
534,4
539,2
543,8
548,11
553,7
557,17
562,22
567,18
571,32
576,41
581,42
586,25
590,46
595,29
600,41
604,28
609,34
614,40
618,59
623,87
628,98
632,134
637,169
642,207
647,177
651,176
656,208
661,174
665,228
670,217
675,146
679,176
684,197
689,142
693,185
698,152
703,148
707,175
712,149
717,176
722,108
726,127
731,136
736,99
740,105
745,109
750,76
754,100
759,89
764,74
768,63
773,67
778,57
782,57
787,46
792,40
797,28
801,35
806,27
811,18
815,31
820,25
825,11
829,16
834,13
839,11
843,16
848,8
853,2
857,9
862,4
867,4
872,3
876,5
881,1
886,1
890,2
895,1
900,2
904,1
909,0
914,0
918,1
923,0
928,0
933,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-objectSize=1024-down.png"
plot [:933] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

