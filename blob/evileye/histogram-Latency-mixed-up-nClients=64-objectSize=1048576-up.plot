
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
192,1
198,0
205,0
211,0
217,0
223,0
229,0
235,0
241,0
247,0
253,2
259,0
265,1
271,1
277,0
283,1
289,0
295,4
301,1
307,4
313,2
319,2
325,2
331,3
337,3
343,0
349,0
355,5
361,4
367,3
373,5
379,5
385,8
391,8
397,10
404,14
410,13
416,12
422,17
428,20
434,19
440,32
446,45
452,35
458,32
464,49
470,58
476,48
482,73
488,69
494,79
500,93
506,103
512,105
518,116
524,119
530,140
536,148
542,159
548,162
554,167
560,140
566,145
572,200
578,189
584,168
590,170
596,183
603,147
609,142
615,150
621,160
627,140
633,125
639,122
645,125
651,83
657,106
663,92
669,76
675,81
681,74
687,54
693,55
699,60
705,51
711,38
717,41
723,34
729,34
735,37
741,33
747,31
753,22
759,23
765,27
771,13
777,14
783,16
789,10
795,12
802,10
808,9
814,12
820,7
826,6
832,5
838,3
844,8
850,4
856,5
862,1
868,3
874,3
880,0
886,3
892,3
898,1
904,2
910,1
916,2
922,2
928,0
934,2
940,1
946,0
952,1
958,0
964,1
970,0
976,0
982,0
988,0
994,1
1001,0
1007,0
1013,0
1019,0
1025,2
1031,0
1037,0
1043,1
1049,0
1055,1
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
1121,1
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
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=1048576-up.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

