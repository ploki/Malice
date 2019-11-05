
set title "Histogram of undefinedstream latency"
$histo << EOD
0,0
5,276
11,2210
17,4035
23,5161
29,5186
35,4877
41,4273
47,3501
53,2888
58,2313
64,1886
70,1570
76,1201
82,953
88,785
94,581
100,467
106,365
111,266
117,209
123,159
129,141
135,85
141,78
147,51
153,47
159,32
164,25
170,20
176,18
182,21
188,16
194,14
200,13
206,8
212,6
217,4
223,2
229,2
235,1
241,0
247,0
253,1
259,1
265,2
270,2
276,0
282,0
288,0
294,0
300,0
306,0
312,0
318,0
323,0
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
1065,0
1071,0
1077,0
1083,0
1089,0
1095,0
1101,0
1107,0
1113,0
1118,0
1124,0
1130,0
1136,0
1142,0
1148,0
1154,0
1160,0
1166,0
1172,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=64-objectSize=0-undefined.png"
plot [:1172] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

