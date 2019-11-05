
set title "Histogram of delstream latency"
$histo << EOD
0,0
37,50
75,530
113,989
151,1005
189,1089
227,1206
265,1416
303,1532
341,1730
379,1962
417,2313
455,2464
493,2898
531,3136
569,3383
607,3733
645,4172
683,4266
721,4528
759,4665
797,4915
835,5004
873,5021
911,5134
949,5015
987,5008
1025,4867
1063,4756
1101,4555
1139,4408
1177,4097
1215,3894
1253,3712
1291,3485
1329,3194
1367,2985
1405,2678
1443,2550
1481,2265
1519,2032
1557,1925
1595,1760
1633,1598
1671,1338
1709,1243
1747,1115
1785,1063
1823,871
1861,791
1898,691
1936,614
1974,582
2012,467
2050,411
2088,380
2126,348
2164,291
2202,280
2240,230
2278,216
2316,221
2354,153
2392,144
2430,151
2468,109
2506,91
2544,84
2582,78
2620,60
2658,54
2696,48
2734,52
2772,45
2810,42
2848,24
2886,24
2924,18
2962,17
3000,21
3038,20
3076,15
3114,19
3152,19
3190,8
3228,8
3266,8
3304,6
3342,4
3380,4
3418,4
3456,1
3494,3
3532,3
3570,1
3608,5
3646,3
3684,2
3722,0
3760,4
3797,0
3835,1
3873,1
3911,2
3949,0
3987,0
4025,1
4063,1
4101,0
4139,1
4177,1
4215,1
4253,0
4291,0
4329,0
4367,0
4405,0
4443,0
4481,0
4519,0
4557,0
4595,0
4633,0
4671,0
4709,0
4747,0
4785,0
4823,0
4861,0
4899,0
4937,0
4975,0
5013,0
5051,0
5089,0
5127,0
5165,0
5203,0
5241,0
5279,0
5317,0
5355,0
5393,0
5431,0
5469,0
5507,0
5545,0
5583,0
5621,0
5659,0
5696,0
5734,0
5772,0
5810,0
5848,0
5886,0
5924,0
5962,0
6000,0
6038,0
6076,0
6114,0
6152,0
6190,0
6228,0
6266,0
6304,0
6342,0
6380,0
6418,0
6456,0
6494,0
6532,0
6570,0
6608,0
6646,0
6684,0
6722,0
6760,0
6798,0
6836,0
6874,0
6912,0
6950,0
6988,0
7026,0
7064,0
7102,0
7140,0
7178,0
7216,0
7254,0
7292,0
7330,0
7368,0
7406,0
7444,0
7482,0
7520,0
7558,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=0-del.png"
plot [:7558] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

