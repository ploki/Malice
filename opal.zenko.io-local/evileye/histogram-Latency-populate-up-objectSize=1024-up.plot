
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
135,1
140,1
145,0
150,1
154,1
159,4
164,5
168,3
173,7
178,4
182,11
187,13
192,10
196,10
201,11
206,15
210,11
215,22
220,20
225,14
229,14
234,34
239,19
243,38
248,38
253,53
257,77
262,82
267,75
271,114
276,163
281,173
285,304
290,367
295,470
300,402
304,547
309,618
314,568
318,692
323,767
328,630
332,828
337,904
342,767
346,956
351,948
356,991
361,861
365,1125
370,1189
375,1088
379,1423
384,1546
389,1349
393,1741
398,1721
403,1384
407,1693
412,1537
417,1102
421,1345
426,1281
431,1220
436,881
440,978
445,986
450,774
454,883
459,800
464,701
468,739
473,660
478,526
482,649
487,626
492,509
496,600
501,566
506,582
511,380
515,410
520,377
525,253
529,238
534,218
539,129
543,150
548,99
553,61
557,59
562,43
567,18
571,23
576,22
581,14
586,10
590,7
595,2
600,3
604,2
609,3
614,2
618,1
623,0
628,0
632,1
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
set output "evileye/histogram-Latency-populate-up-objectSize=1024-up.png"
plot [:933] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

