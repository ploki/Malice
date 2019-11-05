
set title "Histogram of upstream latency"
$histo << EOD
0,0
6,0
12,0
18,0
24,0
30,0
36,0
42,2
48,4
54,14
60,28
66,62
72,154
79,280
85,449
91,702
97,974
103,1268
109,1565
115,1892
121,1971
127,2113
133,2118
139,2087
145,1949
152,1852
158,1728
164,1463
170,1224
176,1008
182,903
188,740
194,588
200,541
206,440
212,348
218,288
224,216
231,178
237,172
243,121
249,110
255,70
261,77
267,49
273,41
279,45
285,30
291,31
297,19
304,14
310,15
316,12
322,13
328,11
334,7
340,9
346,3
352,2
358,1
364,1
370,1
376,3
383,1
389,0
395,0
401,1
407,1
413,1
419,0
425,0
431,2
437,0
443,0
449,0
456,0
462,0
468,0
474,0
480,0
486,0
492,0
498,0
504,0
510,0
516,0
522,0
528,0
535,0
541,0
547,0
553,0
559,0
565,0
571,0
577,0
583,0
589,0
595,0
601,0
608,0
614,0
620,0
626,0
632,0
638,0
644,0
650,0
656,0
662,0
668,0
674,0
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
760,0
766,0
772,0
778,0
784,0
790,0
796,0
802,0
808,0
814,0
820,0
826,0
833,0
839,0
845,0
851,0
857,0
863,0
869,0
875,0
881,0
887,0
893,0
899,0
905,0
912,0
918,0
924,0
930,0
936,0
942,0
948,0
954,0
960,0
966,0
972,0
978,0
985,0
991,0
997,0
1003,0
1009,0
1015,0
1021,0
1027,0
1033,0
1039,0
1045,0
1051,0
1057,0
1064,0
1070,0
1076,0
1082,0
1088,0
1094,0
1100,0
1106,0
1112,0
1118,0
1124,0
1130,0
1137,0
1143,0
1149,0
1155,0
1161,0
1167,0
1173,0
1179,1
1185,0
1191,0
1197,0
1203,0
1210,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=64-objectSize=32768-up.png"
plot [:1210] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

