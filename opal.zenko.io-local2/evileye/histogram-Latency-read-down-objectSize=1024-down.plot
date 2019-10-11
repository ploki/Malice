
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
440,1
445,1
450,2
455,2
460,10
465,6
470,8
475,6
480,6
485,7
490,5
495,6
500,9
505,6
510,3
515,6
520,2
525,1
530,2
535,2
540,6
545,11
549,23
554,36
559,53
564,61
569,103
574,112
579,121
584,136
589,121
594,98
599,90
604,89
609,68
614,47
619,50
624,52
629,29
634,34
639,44
644,113
649,182
654,185
658,349
663,434
668,505
673,560
678,542
683,478
688,452
693,300
698,274
703,265
708,243
713,226
718,171
723,164
728,136
733,100
738,110
743,98
748,113
753,96
758,109
763,110
767,152
772,135
777,132
782,111
787,99
792,105
797,78
802,63
807,82
812,77
817,63
822,57
827,33
832,30
837,26
842,19
847,24
852,12
857,8
862,10
867,11
872,8
876,13
881,4
886,9
891,5
896,4
901,1
906,2
911,4
916,4
921,2
926,3
931,3
936,1
941,1
946,1
951,0
956,0
961,0
966,0
971,0
976,1
981,1
986,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-objectSize=1024-down.png"
plot [:986] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
