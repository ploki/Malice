
set title "Histogram of downstream latency"
$histo << EOD
0,0
5,0
10,0
15,0
21,0
26,0
31,0
36,0
42,0
47,0
52,0
57,0
63,0
68,0
73,0
79,0
84,0
89,0
94,0
100,0
105,0
110,0
115,0
121,0
126,0
131,0
137,0
142,0
147,0
152,0
158,0
163,0
168,0
173,0
179,0
184,0
189,0
195,0
200,0
205,0
210,0
216,0
221,0
226,0
231,0
237,0
242,0
247,0
253,0
258,0
263,0
268,0
274,0
279,0
284,0
289,0
295,0
300,0
305,0
311,0
316,0
321,0
326,0
332,0
337,0
342,0
347,0
353,0
358,0
363,0
368,0
374,0
379,0
384,0
390,0
395,0
400,0
405,0
411,0
416,0
421,0
426,0
432,0
437,0
442,0
448,0
453,0
458,0
463,0
469,0
474,0
479,0
484,0
490,0
495,0
500,0
506,0
511,0
516,0
521,0
527,0
532,0
537,1
542,0
548,0
553,0
558,2
564,1
569,0
574,0
579,0
585,0
590,0
595,0
600,0
606,0
611,0
616,0
622,1
627,0
632,6
637,1
643,2
648,1
653,0
658,1
664,2
669,1
674,1
680,0
685,1
690,0
695,3
701,3
706,0
711,1
716,1
722,0
727,0
732,1
737,1
743,1
748,1
753,0
759,0
764,0
769,1
774,1
780,0
785,1
790,0
795,1
801,1
806,0
811,1
817,0
822,0
827,0
832,0
838,0
843,0
848,0
853,0
859,0
864,0
869,0
875,0
880,0
885,0
890,0
896,0
901,0
906,0
911,0
917,0
922,0
927,0
933,1
938,0
943,0
948,0
954,0
959,0
964,0
969,0
975,0
980,0
985,0
991,0
996,0
1001,0
1006,0
1012,0
1017,0
1022,0
1027,0
1033,0
1038,0
1043,0
1049,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-objectSize=1024-down.png"
plot [:1049] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

