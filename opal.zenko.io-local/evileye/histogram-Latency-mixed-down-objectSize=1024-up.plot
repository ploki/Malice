
set title "Histogram of upstream latency"
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
285,2
290,5
295,2
300,5
304,9
309,14
314,10
318,21
323,17
328,20
332,26
337,41
342,23
346,33
351,20
356,33
361,28
365,53
370,104
375,108
379,170
384,182
389,194
393,224
398,263
403,194
407,284
412,265
417,215
421,284
426,236
431,265
436,177
440,231
445,191
450,155
454,189
459,144
464,139
468,144
473,128
478,84
482,86
487,94
492,74
496,68
501,59
506,68
511,40
515,52
520,37
525,30
529,44
534,36
539,19
543,26
548,9
553,10
557,8
562,10
567,5
571,5
576,5
581,3
586,2
590,3
595,1
600,2
604,2
609,0
614,0
618,0
623,0
628,0
632,0
637,0
642,0
647,0
651,0
656,0
661,0
665,0
670,0
675,0
679,0
684,0
689,0
693,0
698,0
703,0
707,0
712,0
717,0
722,0
726,0
731,0
736,0
740,0
745,0
750,0
754,0
759,0
764,0
768,0
773,0
778,0
782,0
787,0
792,0
797,0
801,0
806,0
811,0
815,0
820,0
825,0
829,0
834,0
839,0
843,0
848,0
853,0
857,0
862,0
867,0
872,0
876,0
881,0
886,0
890,0
895,0
900,0
904,0
909,0
914,0
918,0
923,0
928,0
933,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-objectSize=1024-up.png"
plot [:933] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

