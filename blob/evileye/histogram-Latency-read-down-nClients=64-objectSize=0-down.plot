
set title "Histogram of downstream latency"
$histo << EOD
0,0
4,0
8,0
13,0
17,0
21,3
26,11
30,19
35,46
39,81
43,102
48,153
52,187
57,232
61,269
65,304
70,344
74,370
78,415
83,452
87,491
92,520
96,476
100,556
105,540
109,530
114,580
118,599
122,617
127,594
131,633
135,635
140,601
144,628
149,647
153,687
157,678
162,679
166,610
171,648
175,620
179,611
184,583
188,628
193,590
197,592
201,538
206,542
210,527
214,508
219,500
223,479
228,502
232,480
236,412
241,417
245,406
250,435
254,367
258,383
263,360
267,342
271,317
276,325
280,301
285,294
289,271
293,258
298,218
302,238
307,218
311,229
315,228
320,206
324,182
329,192
333,167
337,173
342,167
346,144
350,129
355,106
359,120
364,100
368,122
372,111
377,91
381,84
386,100
390,105
394,85
399,69
403,61
407,59
412,77
416,66
421,44
425,68
429,52
434,51
438,45
443,42
447,46
451,41
456,25
460,44
465,30
469,27
473,23
478,25
482,24
486,17
491,23
495,26
500,13
504,21
508,19
513,9
517,14
522,9
526,15
530,10
535,9
539,9
543,10
548,11
552,9
557,12
561,6
565,9
570,6
574,5
579,6
583,2
587,3
592,3
596,7
601,3
605,2
609,2
614,1
618,2
622,2
627,2
631,3
636,2
640,3
644,1
649,0
653,3
658,0
662,1
666,0
671,1
675,2
679,0
684,0
688,1
693,4
697,0
701,2
706,0
710,1
715,1
719,0
723,0
728,1
732,0
737,0
741,0
745,0
750,1
754,1
758,1
763,0
767,0
772,0
776,0
780,1
785,1
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
873,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=64-objectSize=0-down.png"
plot [:873] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
