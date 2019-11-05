
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
162,2
168,0
174,0
180,0
186,1
192,2
198,0
205,5
211,2
217,1
223,3
229,11
235,9
241,8
247,15
253,11
259,16
265,20
271,25
277,29
283,39
289,38
295,55
301,70
307,60
313,67
319,102
325,128
331,139
337,166
343,174
349,211
355,220
361,290
367,280
373,368
379,409
385,423
391,485
397,571
404,574
410,656
416,679
422,802
428,828
434,920
440,931
446,1124
452,1139
458,1141
464,1197
470,1160
476,1220
482,1255
488,1265
494,1242
500,1122
506,1111
512,1098
518,1112
524,1059
530,999
536,865
542,829
548,804
554,706
560,701
566,651
572,597
578,534
584,495
590,430
596,429
603,372
609,340
615,324
621,332
627,283
633,260
639,255
645,196
651,164
657,149
663,150
669,141
675,128
681,107
687,101
693,121
699,98
705,79
711,79
717,64
723,76
729,64
735,40
741,47
747,38
753,39
759,34
765,36
771,40
777,21
783,16
789,27
795,10
802,8
808,26
814,11
820,16
826,8
832,15
838,7
844,5
850,8
856,11
862,3
868,4
874,4
880,0
886,6
892,1
898,1
904,0
910,5
916,2
922,1
928,0
934,1
940,1
946,4
952,1
958,0
964,0
970,1
976,0
982,0
988,2
994,0
1001,2
1007,0
1013,0
1019,0
1025,0
1031,0
1037,0
1043,1
1049,0
1055,0
1061,1
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
set output "evileye/histogram-Latency-populate-up-nClients=64-objectSize=1048576-up.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

