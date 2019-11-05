
set title "Histogram of upstream latency"
$histo << EOD
0,0
6,0
12,0
18,0
24,0
30,0
36,0
42,0
48,0
54,0
60,0
66,0
72,0
78,0
84,0
90,0
96,0
102,0
108,0
114,0
120,0
126,0
132,0
138,0
144,0
150,0
156,0
162,0
168,0
174,0
180,0
186,0
192,0
198,0
205,0
211,0
217,0
223,0
229,0
235,0
241,0
247,0
253,0
259,0
265,0
271,0
277,0
283,0
289,0
295,0
301,0
307,0
313,0
319,0
325,0
331,0
337,0
343,0
349,0
355,0
361,1
367,0
373,0
379,1
385,0
391,1
397,0
404,2
410,1
416,1
422,2
428,2
434,3
440,7
446,2
452,2
458,3
464,2
470,1
476,3
482,1
488,1
494,3
500,5
506,2
512,5
518,2
524,1
530,2
536,0
542,1
548,2
554,3
560,0
566,0
572,1
578,1
584,0
590,0
596,0
603,0
609,0
615,0
621,0
627,0
633,0
639,0
645,0
651,0
657,0
663,0
669,0
675,0
681,0
687,0
693,0
699,0
705,0
711,0
717,0
723,0
729,0
735,0
741,0
747,0
753,0
759,0
765,0
771,0
777,0
783,0
789,0
795,0
802,0
808,0
814,0
820,0
826,0
832,0
838,0
844,0
850,0
856,0
862,0
868,0
874,0
880,0
886,0
892,0
898,0
904,0
910,0
916,0
922,0
928,0
934,0
940,0
946,0
952,0
958,0
964,0
970,0
976,0
982,0
988,0
994,0
1001,0
1007,0
1013,0
1019,0
1025,0
1031,0
1037,0
1043,0
1049,0
1055,0
1061,0
1067,0
1073,0
1079,0
1085,0
1091,0
1097,0
1103,0
1109,0
1115,0
1121,0
1127,0
1133,0
1139,0
1145,0
1151,0
1157,0
1163,0
1169,0
1175,0
1181,0
1187,0
1193,0
1200,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=1048576-up.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

