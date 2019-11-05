
set title "Histogram of upstream latency"
$histo << EOD
0,0
5,0
11,1
17,8
23,65
29,453
35,1563
41,4780
47,10006
53,15912
58,20665
64,23527
70,23925
76,22280
82,20316
88,17829
94,15226
100,12281
106,9978
111,7759
117,5902
123,4573
129,3494
135,2722
141,2051
147,1554
153,1199
159,910
164,730
170,550
176,405
182,309
188,284
194,214
200,175
206,155
212,116
217,109
223,71
229,58
235,46
241,52
247,39
253,27
259,17
265,15
270,11
276,7
282,5
288,4
294,3
300,2
306,3
312,0
318,2
323,1
329,0
335,0
341,0
347,0
353,0
359,0
365,0
371,0
376,0
382,0
388,0
394,0
400,0
406,0
412,0
418,0
424,0
429,0
435,0
441,0
447,0
453,0
459,0
465,0
471,0
477,0
482,0
488,0
494,0
500,0
506,0
512,0
518,0
524,0
530,0
535,0
541,0
547,0
553,0
559,0
565,0
571,0
577,0
583,0
588,0
594,0
600,0
606,0
612,0
618,0
624,0
630,0
636,0
641,0
647,0
653,0
659,0
665,0
671,0
677,0
683,0
689,0
694,0
700,0
706,0
712,0
718,0
724,0
730,0
736,0
742,0
747,0
753,0
759,0
765,0
771,0
777,0
783,0
789,0
795,0
800,0
806,0
812,0
818,0
824,0
830,0
836,0
842,0
848,0
853,0
859,0
865,0
871,0
877,0
883,0
889,0
895,0
901,0
906,0
912,0
918,0
924,0
930,0
936,0
942,0
948,0
954,0
959,0
965,0
971,0
977,0
983,0
989,0
995,0
1001,0
1007,0
1012,0
1018,0
1024,0
1030,0
1036,0
1042,0
1048,0
1054,0
1060,0
1065,1
1071,2
1077,0
1083,0
1089,2
1095,3
1101,1
1107,0
1113,1
1118,0
1124,1
1130,0
1136,0
1142,0
1148,0
1154,1
1160,0
1166,0
1172,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=64-objectSize=0-up.png"
plot [:1172] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

