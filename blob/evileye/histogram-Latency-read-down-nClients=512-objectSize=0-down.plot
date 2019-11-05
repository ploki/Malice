
set title "Histogram of downstream latency"
$histo << EOD
0,0
37,25
75,98
113,143
151,179
189,244
227,319
265,343
303,372
341,431
379,484
417,477
455,487
493,559
531,579
569,572
607,586
645,593
683,623
721,667
759,613
797,631
835,579
873,596
911,561
949,586
987,553
1025,533
1063,507
1101,520
1139,522
1177,479
1215,474
1253,473
1291,462
1329,478
1367,455
1405,452
1443,448
1481,453
1519,435
1557,392
1595,407
1633,358
1671,377
1709,382
1747,397
1785,312
1823,363
1861,319
1898,344
1936,333
1974,342
2012,337
2050,297
2088,345
2126,307
2164,276
2202,309
2240,267
2278,236
2316,260
2354,235
2392,241
2430,208
2468,266
2506,212
2544,182
2582,206
2620,189
2658,208
2696,205
2734,161
2772,203
2810,169
2848,134
2886,154
2924,149
2962,130
3000,136
3038,129
3076,161
3114,132
3152,112
3190,126
3228,85
3266,101
3304,109
3342,93
3380,100
3418,111
3456,102
3494,76
3532,85
3570,83
3608,85
3646,87
3684,84
3722,74
3760,76
3797,55
3835,70
3873,64
3911,57
3949,63
3987,40
4025,55
4063,47
4101,51
4139,37
4177,48
4215,36
4253,49
4291,41
4329,30
4367,30
4405,28
4443,30
4481,19
4519,11
4557,20
4595,19
4633,23
4671,24
4709,19
4747,11
4785,14
4823,12
4861,14
4899,9
4937,6
4975,16
5013,4
5051,6
5089,5
5127,7
5165,5
5203,8
5241,8
5279,5
5317,6
5355,12
5393,10
5431,4
5469,4
5507,7
5545,5
5583,4
5621,4
5659,2
5696,5
5734,0
5772,1
5810,4
5848,5
5886,7
5924,2
5962,6
6000,3
6038,1
6076,1
6114,5
6152,0
6190,5
6228,3
6266,3
6304,2
6342,2
6380,0
6418,3
6456,2
6494,4
6532,1
6570,3
6608,2
6646,2
6684,2
6722,2
6760,2
6798,0
6836,2
6874,0
6912,0
6950,1
6988,0
7026,0
7064,2
7102,0
7140,0
7178,0
7216,2
7254,1
7292,1
7330,1
7368,0
7406,0
7444,0
7482,0
7520,0
7558,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=0-down.png"
plot [:7558] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

