
set title "Histogram of upstream latency"
$histo << EOD
0,0
5,2
10,27854
15,86429
21,24795
26,4613
31,1255
36,453
42,183
47,66
52,12
57,11
63,4
68,2
73,0
78,0
84,0
89,0
94,0
99,0
105,0
110,0
115,0
120,0
126,0
131,0
136,0
141,0
147,0
152,0
157,0
162,1
168,6
173,11
178,12
183,9
189,0
194,3
199,3
204,2
210,1
215,0
220,0
226,1
231,1
236,5
241,2
247,0
252,0
257,0
262,0
268,0
273,0
278,0
283,0
289,0
294,0
299,0
304,0
310,0
315,0
320,0
325,0
331,0
336,0
341,0
346,0
352,0
357,0
362,0
367,0
373,0
378,0
383,0
388,0
394,0
399,0
404,0
409,0
415,0
420,0
425,0
431,0
436,0
441,0
446,0
452,0
457,0
462,0
467,0
473,0
478,0
483,0
488,0
494,0
499,0
504,0
509,0
515,0
520,0
525,0
530,0
536,0
541,0
546,0
551,0
557,0
562,0
567,0
572,0
578,0
583,0
588,0
593,0
599,0
604,0
609,0
614,0
620,0
625,0
630,0
636,0
641,0
646,0
651,0
657,0
662,0
667,0
672,0
678,0
683,0
688,0
693,0
699,0
704,0
709,0
714,0
720,0
725,0
730,0
735,0
741,0
746,0
751,0
756,0
762,0
767,0
772,0
777,0
783,0
788,0
793,0
798,0
804,0
809,0
814,0
819,0
825,0
830,0
835,0
841,0
846,0
851,0
856,0
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
946,0
951,0
956,0
961,0
967,0
972,0
977,0
982,0
988,0
993,0
998,0
1003,0
1009,0
1014,0
1019,1
1024,0
1030,0
1035,0
1040,0
1046,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=8-objectSize=0-up.png"
plot [:1046] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

