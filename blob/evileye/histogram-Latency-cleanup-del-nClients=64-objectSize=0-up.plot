
set title "Histogram of upstream latency"
$histo << EOD
0,0
4,0
8,0
13,0
17,0
21,0
26,0
30,0
35,0
39,0
43,0
48,0
52,1
57,0
61,0
65,1
70,1
74,0
78,1
83,0
87,0
92,0
96,1
100,1
105,0
109,2
114,0
118,0
122,0
127,0
131,1
135,0
140,0
144,0
149,1
153,0
157,0
162,1
166,0
171,1
175,0
179,2
184,1
188,1
193,1
197,0
201,0
206,0
210,1
214,0
219,1
223,1
228,3
232,1
236,0
241,1
245,1
250,1
254,1
258,2
263,0
267,0
271,0
276,0
280,0
285,0
289,0
293,0
298,0
302,0
307,0
311,0
315,1
320,0
324,0
329,0
333,0
337,0
342,0
346,0
350,0
355,0
359,0
364,0
368,0
372,0
377,0
381,0
386,0
390,0
394,0
399,0
403,0
407,0
412,0
416,0
421,0
425,0
429,0
434,1
438,0
443,0
447,0
451,0
456,0
460,0
465,0
469,0
473,0
478,0
482,0
486,0
491,0
495,0
500,0
504,0
508,0
513,0
517,0
522,0
526,0
530,0
535,0
539,0
543,0
548,0
552,0
557,0
561,0
565,0
570,0
574,0
579,0
583,0
587,0
592,0
596,0
601,0
605,0
609,0
614,0
618,0
622,0
627,0
631,0
636,0
640,0
644,0
649,0
653,0
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
701,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=64-objectSize=0-up.png"
plot [:873] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
