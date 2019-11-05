
set title "Histogram of downstream latency"
$histo << EOD
0,0
6,0
12,0
19,0
25,0
32,0
38,0
45,0
51,0
58,0
64,0
71,0
77,0
84,0
90,0
97,0
103,0
110,0
116,0
123,0
129,2
136,0
142,0
149,0
155,1
162,1
168,1
175,1
181,1
188,2
194,2
201,1
207,2
214,3
220,5
227,7
233,6
240,7
246,14
253,7
259,7
266,9
272,8
279,18
285,21
292,25
298,19
305,29
311,25
318,38
324,42
331,45
337,34
344,40
350,41
357,48
363,50
370,50
376,47
383,48
389,70
396,54
402,66
409,62
415,85
422,87
428,87
434,103
441,110
447,106
454,123
460,140
467,180
473,129
480,168
486,156
493,191
499,176
506,203
512,225
519,209
525,226
532,229
538,217
545,235
551,222
558,207
564,241
571,264
577,221
584,252
590,206
597,202
603,211
610,203
616,199
623,182
629,183
636,170
642,185
649,164
655,164
662,155
668,144
675,138
681,146
688,118
694,121
701,126
707,118
714,114
720,99
727,95
733,92
740,94
746,77
753,76
759,79
766,71
772,70
779,69
785,52
792,46
798,53
805,51
811,47
818,43
824,39
831,57
837,35
844,40
850,37
857,37
863,43
869,27
876,23
882,14
889,29
895,28
902,19
908,16
915,24
921,21
928,19
934,12
941,12
947,12
954,8
960,9
967,14
973,7
980,5
986,7
993,9
999,10
1006,13
1012,4
1019,9
1025,3
1032,7
1038,4
1045,5
1051,5
1058,3
1064,3
1071,3
1077,1
1084,0
1090,1
1097,3
1103,2
1110,2
1116,2
1123,3
1129,2
1136,0
1142,1
1149,0
1155,1
1162,0
1168,1
1175,1
1181,0
1188,0
1194,0
1201,0
1207,0
1214,0
1220,0
1227,0
1233,1
1240,0
1246,0
1253,0
1259,0
1266,0
1272,0
1279,0
1285,0
1292,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=1048576-down.png"
plot [:1292] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

