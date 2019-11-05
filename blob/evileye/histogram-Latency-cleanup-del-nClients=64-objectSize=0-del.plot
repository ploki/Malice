
set title "Histogram of delstream latency"
$histo << EOD
0,0
4,0
8,2
13,3
17,15
21,18
26,49
30,128
35,279
39,580
43,918
48,1493
52,2119
57,2778
61,3549
65,4191
70,4619
74,5205
78,5661
83,5834
87,5876
92,5989
96,5769
100,5752
105,5392
109,5310
114,5018
118,4662
122,4618
127,4346
131,3997
135,3809
140,3628
144,3393
149,3243
153,3025
157,2927
162,2648
166,2374
171,2301
175,2071
179,1891
184,1833
188,1662
193,1538
197,1437
201,1243
206,1167
210,1093
214,975
219,909
223,846
228,729
232,672
236,634
241,567
245,468
250,460
254,425
258,370
263,349
267,360
271,289
276,250
280,231
285,200
289,185
293,174
298,162
302,159
307,131
311,124
315,127
320,88
324,82
329,87
333,74
337,66
342,59
346,69
350,63
355,32
359,42
364,44
368,30
372,29
377,27
381,17
386,30
390,22
394,14
399,16
403,17
407,12
412,6
416,12
421,9
425,3
429,8
434,6
438,10
443,3
447,5
451,5
456,2
460,6
465,1
469,5
473,1
478,2
482,2
486,0
491,1
495,3
500,0
504,0
508,1
513,3
517,0
522,0
526,1
530,1
535,1
539,3
543,2
548,1
552,0
557,1
561,0
565,1
570,2
574,1
579,1
583,0
587,0
592,0
596,1
601,0
605,0
609,1
614,0
618,0
622,0
627,0
631,0
636,0
640,0
644,0
649,0
653,1
658,0
662,0
666,0
671,0
675,0
679,0
684,0
688,0
693,0
697,0
701,1
706,0
710,0
715,0
719,0
723,0
728,0
732,0
737,0
741,0
745,0
750,0
754,0
758,0
763,0
767,0
772,0
776,0
780,0
785,0
789,0
794,0
798,0
802,0
807,0
811,0
815,0
820,0
824,0
829,0
833,0
837,0
842,0
846,0
851,0
855,0
859,0
864,0
868,0
873,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=0-del.png"
plot [:873] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

