
set title "Histogram of downstream latency"
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
162,2
168,1
174,3
180,2
186,0
192,3
198,1
205,3
211,2
217,6
223,7
229,8
235,8
241,16
247,22
253,25
259,49
265,42
271,42
277,64
283,73
289,78
295,103
301,115
307,129
313,168
319,176
325,183
331,211
337,215
343,210
349,259
355,229
361,265
367,293
373,261
379,294
385,276
391,260
397,267
404,262
410,266
416,232
422,217
428,190
434,185
440,161
446,164
452,139
458,117
464,108
470,89
476,90
482,73
488,64
494,52
500,46
506,45
512,28
518,31
524,24
530,21
536,28
542,20
548,13
554,5
560,13
566,3
572,6
578,8
584,6
590,3
596,1
603,1
609,3
615,1
621,1
627,0
633,0
639,1
645,0
651,0
657,1
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
1200,3
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=1048576-down.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
