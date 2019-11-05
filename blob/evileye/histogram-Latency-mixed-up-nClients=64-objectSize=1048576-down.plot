
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
229,1
235,1
241,0
247,1
253,0
259,1
265,0
271,0
277,1
283,1
289,2
295,2
301,4
307,3
313,2
319,2
325,4
331,2
337,8
343,4
349,5
355,7
361,17
367,19
373,14
379,18
385,24
391,14
397,33
404,30
410,35
416,42
422,26
428,51
434,41
440,56
446,65
452,61
458,83
464,102
470,73
476,77
482,114
488,126
494,131
500,126
506,140
512,148
518,136
524,156
530,155
536,183
542,174
548,160
554,159
560,154
566,152
572,173
578,132
584,145
590,130
596,118
603,109
609,112
615,107
621,99
627,99
633,94
639,79
645,76
651,58
657,69
663,54
669,55
675,59
681,45
687,59
693,27
699,37
705,36
711,32
717,37
723,21
729,25
735,26
741,31
747,32
753,14
759,27
765,19
771,14
777,11
783,5
789,8
795,7
802,12
808,4
814,5
820,9
826,6
832,5
838,2
844,2
850,10
856,3
862,8
868,4
874,2
880,5
886,5
892,2
898,4
904,1
910,2
916,4
922,0
928,3
934,0
940,0
946,2
952,1
958,1
964,0
970,1
976,1
982,1
988,1
994,1
1001,1
1007,0
1013,0
1019,0
1025,1
1031,0
1037,3
1043,1
1049,1
1055,0
1061,1
1067,0
1073,0
1079,0
1085,0
1091,0
1097,0
1103,1
1109,0
1115,0
1121,0
1127,0
1133,0
1139,0
1145,0
1151,1
1157,0
1163,0
1169,0
1175,0
1181,0
1187,0
1193,0
1200,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=1048576-down.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

