
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
9,0
14,0
19,0
24,0
29,0
34,0
39,0
44,0
49,0
54,0
59,0
64,0
69,0
74,0
79,0
84,0
89,0
94,0
99,0
104,0
109,0
113,0
118,0
123,0
128,0
133,0
138,0
143,0
148,0
153,0
158,0
163,0
168,0
173,0
178,0
183,0
188,0
193,0
198,0
203,0
208,0
213,0
218,0
222,0
227,0
232,0
237,0
242,0
247,0
252,0
257,0
262,0
267,0
272,0
277,0
282,0
287,0
292,0
297,0
302,0
307,0
312,0
317,0
322,0
327,0
331,0
336,0
341,0
346,0
351,0
356,0
361,0
366,0
371,0
376,0
381,0
386,0
391,0
396,0
401,0
406,0
411,0
416,0
421,0
426,0
431,0
436,0
440,0
445,0
450,0
455,0
460,0
465,0
470,0
475,0
480,0
485,0
490,0
495,0
500,0
505,0
510,0
515,0
520,0
525,0
530,0
535,0
540,1
545,0
549,0
554,0
559,0
564,0
569,1
574,0
579,0
584,1
589,0
594,0
599,0
604,0
609,1
614,2
619,0
624,1
629,1
634,1
639,4
644,0
649,0
654,1
658,0
663,1
668,3
673,1
678,1
683,2
688,1
693,1
698,0
703,0
708,0
713,1
718,0
723,1
728,0
733,0
738,0
743,1
748,0
753,1
758,4
763,0
767,0
772,0
777,0
782,0
787,0
792,0
797,0
802,0
807,0
812,1
817,0
822,0
827,0
832,0
837,1
842,0
847,0
852,0
857,0
862,0
867,0
872,0
876,0
881,0
886,0
891,0
896,0
901,0
906,0
911,0
916,0
921,0
926,0
931,0
936,0
941,0
946,0
951,0
956,0
961,0
966,0
971,0
976,0
981,0
986,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-objectSize=1024-down.png"
plot [:986] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

