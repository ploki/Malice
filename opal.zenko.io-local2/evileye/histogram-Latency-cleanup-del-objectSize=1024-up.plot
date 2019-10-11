
set title "Histogram of upstream latency"
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
331,1
336,0
341,0
346,0
351,0
356,0
361,1
366,0
371,0
376,1
381,2
386,1
391,2
396,2
401,1
406,1
411,0
416,1
421,2
426,0
431,2
436,0
440,1
445,3
450,0
455,0
460,1
465,1
470,0
475,1
480,0
485,1
490,0
495,0
500,0
505,1
510,0
515,2
520,0
525,0
530,0
535,1
540,0
545,0
549,0
554,0
559,0
564,0
569,1
574,0
579,0
584,0
589,0
594,0
599,0
604,0
609,0
614,0
619,0
624,0
629,0
634,0
639,0
644,0
649,0
654,0
658,0
663,0
668,0
673,0
678,0
683,0
688,0
693,0
698,0
703,0
708,0
713,0
718,0
723,0
728,0
733,0
738,0
743,0
748,0
753,0
758,0
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
812,0
817,0
822,0
827,0
832,0
837,0
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
set output "evileye/histogram-Latency-cleanup-del-objectSize=1024-up.png"
plot [:986] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
