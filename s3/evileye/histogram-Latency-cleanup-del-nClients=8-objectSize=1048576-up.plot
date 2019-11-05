
set title "Histogram of upstream latency"
$histo << EOD
0,0
5,0
10,0
15,0
20,0
26,0
31,0
36,0
41,0
47,0
52,0
57,0
62,0
67,1
73,0
78,0
83,0
88,0
94,1
99,0
104,1
109,0
114,2
120,1
125,0
130,1
135,1
141,0
146,0
151,0
156,0
162,0
167,0
172,0
177,0
182,0
188,0
193,0
198,0
203,0
209,0
214,0
219,0
224,0
229,0
235,0
240,0
245,0
250,0
256,0
261,0
266,0
271,0
276,0
282,0
287,0
292,0
297,0
303,0
308,0
313,0
318,0
324,0
329,0
334,0
339,0
344,0
350,0
355,0
360,0
365,0
371,0
376,0
381,0
386,0
391,0
397,0
402,0
407,0
412,0
418,0
423,0
428,0
433,0
438,0
444,0
449,0
454,0
459,0
465,0
470,0
475,0
480,0
486,0
491,0
496,0
501,0
506,0
512,0
517,0
522,0
527,0
533,0
538,0
543,0
548,0
553,0
559,0
564,0
569,0
574,0
580,0
585,0
590,0
595,0
601,0
606,0
611,0
616,0
621,0
627,0
632,0
637,0
642,0
648,0
653,0
658,0
663,0
668,0
674,0
679,0
684,0
689,0
695,0
700,0
705,0
710,0
715,0
721,0
726,0
731,0
736,0
742,0
747,0
752,0
757,0
763,0
768,0
773,0
778,0
783,0
789,0
794,0
799,0
804,0
810,0
815,0
820,0
825,0
830,0
836,0
841,0
846,0
851,0
857,0
862,0
867,0
872,0
877,0
883,0
888,0
893,0
898,0
904,0
909,0
914,0
919,0
925,0
930,0
935,0
940,0
945,0
951,0
956,0
961,0
966,0
972,0
977,0
982,0
987,0
992,0
998,0
1003,0
1008,0
1013,0
1019,0
1024,0
1029,0
1034,0
1040,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=1048576-up.png"
plot [:1040] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

