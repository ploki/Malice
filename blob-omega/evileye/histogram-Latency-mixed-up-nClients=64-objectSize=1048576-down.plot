
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
259,1
265,2
271,3
277,10
283,9
289,7
295,11
301,10
307,16
313,15
319,34
325,34
331,53
337,59
343,58
349,103
355,103
361,131
367,145
373,157
379,213
385,250
391,255
397,297
404,291
410,357
416,355
422,362
428,356
434,364
440,357
446,304
452,325
458,269
464,231
470,228
476,191
482,161
488,148
494,104
500,72
506,76
512,52
518,55
524,38
530,48
536,27
542,29
548,21
554,16
560,11
566,10
572,9
578,8
584,3
590,4
596,2
603,2
609,4
615,4
621,2
627,0
633,2
639,1
645,4
651,0
657,2
663,1
669,0
675,1
681,2
687,0
693,0
699,2
705,0
711,0
717,0
723,0
729,0
735,1
741,2
747,0
753,0
759,0
765,0
771,0
777,0
783,1
789,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=1048576-down.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

