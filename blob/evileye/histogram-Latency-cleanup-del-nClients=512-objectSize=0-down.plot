
set title "Histogram of downstream latency"
$histo << EOD
0,0
37,0
75,0
113,0
151,0
189,0
227,0
265,0
303,0
341,1
379,0
417,0
455,0
493,2
531,1
569,0
607,2
645,1
683,0
721,2
759,3
797,1
835,4
873,4
911,5
949,7
987,1
1025,3
1063,2
1101,4
1139,5
1177,7
1215,8
1253,4
1291,8
1329,10
1367,7
1405,12
1443,5
1481,3
1519,3
1557,6
1595,11
1633,10
1671,3
1709,0
1747,6
1785,6
1823,7
1861,6
1898,6
1936,5
1974,7
2012,5
2050,2
2088,4
2126,8
2164,7
2202,7
2240,4
2278,1
2316,2
2354,3
2392,4
2430,2
2468,5
2506,4
2544,3
2582,4
2620,4
2658,2
2696,1
2734,2
2772,2
2810,1
2848,1
2886,0
2924,1
2962,0
3000,3
3038,1
3076,0
3114,1
3152,0
3190,1
3228,2
3266,2
3304,2
3342,1
3380,1
3418,1
3456,0
3494,2
3532,1
3570,0
3608,3
3646,1
3684,0
3722,0
3760,1
3797,0
3835,0
3873,1
3911,0
3949,0
3987,0
4025,0
4063,1
4101,0
4139,0
4177,0
4215,1
4253,0
4291,0
4329,0
4367,0
4405,1
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
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=0-down.png"
plot [:7558] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
