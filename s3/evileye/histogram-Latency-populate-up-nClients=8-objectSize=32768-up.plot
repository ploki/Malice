
set title "Histogram of upstream latency"
$histo << EOD
0,0
5,0
10,361
15,29542
20,54246
25,19208
31,5344
36,1871
41,659
46,220
51,79
57,29
62,8
67,4
72,3
77,1
83,1
88,0
93,0
98,1
103,1
109,3
114,1
119,0
124,0
129,0
135,0
140,0
145,0
150,0
155,0
161,0
166,0
171,1
176,4
181,13
187,12
192,8
197,2
202,0
207,0
213,0
218,0
223,0
228,0
233,0
239,0
244,0
249,2
254,3
259,3
264,0
270,0
275,0
280,0
285,0
290,0
296,0
301,0
306,0
311,0
316,0
322,0
327,0
332,0
337,0
342,0
348,0
353,0
358,0
363,0
368,0
374,0
379,0
384,0
389,0
394,0
400,0
405,0
410,0
415,0
420,0
426,0
431,0
436,0
441,0
446,0
452,0
457,0
462,0
467,0
472,0
478,0
483,0
488,0
493,0
498,0
504,0
509,0
514,0
519,0
524,0
529,0
535,0
540,0
545,0
550,0
555,0
561,0
566,0
571,0
576,0
581,0
587,0
592,0
597,0
602,0
607,0
613,0
618,0
623,0
628,0
633,0
639,0
644,0
649,0
654,0
659,0
665,0
670,0
675,0
680,0
685,0
691,0
696,0
701,0
706,0
711,0
717,0
722,0
727,0
732,0
737,0
743,0
748,0
753,0
758,0
763,0
769,0
774,0
779,0
784,0
789,0
794,0
800,0
805,0
810,0
815,0
820,0
826,0
831,0
836,0
841,0
846,0
852,0
857,0
862,0
867,0
872,0
878,0
883,0
888,0
893,0
898,0
904,0
909,0
914,0
919,0
924,0
930,0
935,0
940,0
945,0
950,0
956,0
961,0
966,0
971,0
976,0
982,0
987,0
992,0
997,0
1002,0
1008,0
1013,0
1018,0
1023,0
1028,0
1034,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=32768-up.png"
plot [:1034] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
