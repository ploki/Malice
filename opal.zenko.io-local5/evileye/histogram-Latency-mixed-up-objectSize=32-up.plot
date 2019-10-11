
set title "Histogram of upstream latency"
$histo << EOD
0,0
48,6
96,29
144,56
192,78
240,102
289,91
337,134
385,160
433,195
481,206
529,236
578,293
626,337
674,383
722,424
770,445
818,518
867,575
915,571
963,548
1011,562
1059,555
1107,620
1156,547
1204,548
1252,504
1300,517
1348,477
1396,486
1445,447
1493,428
1541,389
1589,389
1637,319
1685,312
1734,269
1782,246
1830,236
1878,208
1926,197
1975,217
2023,178
2071,158
2119,152
2167,158
2215,143
2264,132
2312,108
2360,108
2408,93
2456,109
2504,88
2553,90
2601,70
2649,46
2697,52
2745,48
2793,42
2842,41
2890,47
2938,31
2986,28
3034,19
3082,27
3131,22
3179,11
3227,22
3275,12
3323,9
3371,8
3420,5
3468,6
3516,4
3564,8
3612,7
3660,1
3709,2
3757,4
3805,1
3853,1
3901,1
3950,1
3998,3
4046,3
4094,2
4142,1
4190,1
4239,0
4287,1
4335,0
4383,0
4431,0
4479,0
4528,0
4576,0
4624,0
4672,1
4720,0
4768,0
4817,0
4865,0
4913,0
4961,0
5009,0
5057,0
5106,0
5154,0
5202,0
5250,0
5298,0
5346,0
5395,0
5443,0
5491,0
5539,0
5587,0
5635,0
5684,0
5732,0
5780,0
5828,0
5876,0
5925,0
5973,0
6021,0
6069,0
6117,0
6165,0
6214,0
6262,0
6310,0
6358,0
6406,0
6454,0
6503,0
6551,0
6599,0
6647,0
6695,0
6743,0
6792,0
6840,0
6888,0
6936,0
6984,0
7032,0
7081,0
7129,0
7177,0
7225,0
7273,0
7321,0
7370,0
7418,0
7466,0
7514,0
7562,0
7610,0
7659,0
7707,0
7755,0
7803,0
7851,0
7900,0
7948,0
7996,0
8044,0
8092,0
8140,0
8189,0
8237,0
8285,0
8333,0
8381,0
8429,1
8478,0
8526,0
8574,0
8622,0
8670,0
8718,0
8767,0
8815,0
8863,0
8911,0
8959,0
9007,0
9056,0
9104,0
9152,1
9200,0
9248,0
9296,0
9345,0
9393,0
9441,0
9489,0
9537,0
9586,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-objectSize=32-up.png"
plot [:9586] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

