
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
96,1
102,0
108,1
114,0
120,0
126,1
132,0
138,2
144,2
150,0
156,0
162,2
168,2
174,1
180,2
186,1
192,7
198,0
205,9
211,15
217,8
223,12
229,19
235,12
241,10
247,19
253,15
259,28
265,25
271,28
277,35
283,36
289,34
295,54
301,45
307,38
313,63
319,67
325,75
331,76
337,113
343,113
349,135
355,151
361,168
367,196
373,222
379,277
385,330
391,352
397,386
404,445
410,443
416,448
422,511
428,504
434,508
440,498
446,518
452,466
458,438
464,446
470,474
476,463
482,440
488,366
494,347
500,325
506,295
512,247
518,245
524,219
530,224
536,214
542,196
548,169
554,158
560,118
566,125
572,95
578,96
584,78
590,80
596,62
603,65
609,45
615,43
621,52
627,37
633,26
639,28
645,31
651,22
657,22
663,27
669,26
675,15
681,17
687,17
693,15
699,6
705,15
711,16
717,13
723,5
729,13
735,8
741,4
747,4
753,6
759,6
765,2
771,0
777,3
783,1
789,1
795,1
802,0
808,0
814,1
820,0
826,0
832,0
838,0
844,0
850,0
856,1
862,0
868,0
874,0
880,0
886,0
892,0
898,0
904,0
910,1
916,1
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
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=1048576-down.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

