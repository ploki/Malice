
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
84,1
90,1
96,1
102,0
108,0
114,2
120,1
126,2
132,3
138,5
144,6
150,7
156,14
162,11
168,11
174,9
180,18
186,25
192,21
198,21
205,34
211,38
217,34
223,30
229,46
235,36
241,55
247,51
253,67
259,102
265,59
271,104
277,110
283,121
289,164
295,163
301,166
307,226
313,255
319,281
325,331
331,370
337,423
343,442
349,523
355,528
361,609
367,623
373,643
379,670
385,687
391,659
397,662
404,610
410,639
416,633
422,576
428,535
434,499
440,448
446,425
452,379
458,310
464,321
470,252
476,214
482,198
488,150
494,136
500,105
506,94
512,69
518,53
524,64
530,47
536,34
542,22
548,28
554,14
560,22
566,18
572,16
578,16
584,9
590,11
596,3
603,5
609,2
615,2
621,1
627,0
633,0
639,1
645,1
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
1200,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=1048576-down.png"
plot [:1200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
