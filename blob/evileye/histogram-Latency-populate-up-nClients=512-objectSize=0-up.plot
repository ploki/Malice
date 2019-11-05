
set title "Histogram of upstream latency"
$histo << EOD
0,0
37,26
75,395
113,820
151,920
189,922
227,1026
265,1164
303,1297
341,1481
379,1623
417,1917
455,2100
493,2343
531,2686
569,2838
607,3282
645,3431
683,3722
721,4136
759,4306
797,4468
835,4741
873,4925
911,5030
949,5002
987,4958
1025,4927
1063,5126
1101,4862
1139,4703
1177,4579
1215,4227
1253,3956
1291,3769
1329,3686
1367,3399
1405,3115
1443,2803
1481,2593
1519,2331
1557,2173
1595,2057
1633,1777
1671,1597
1709,1374
1747,1333
1785,1100
1823,1092
1861,952
1898,823
1936,719
1974,640
2012,545
2050,526
2088,483
2126,398
2164,326
2202,331
2240,278
2278,253
2316,234
2354,187
2392,188
2430,162
2468,147
2506,152
2544,99
2582,96
2620,88
2658,74
2696,67
2734,57
2772,60
2810,51
2848,40
2886,40
2924,38
2962,28
3000,17
3038,23
3076,27
3114,13
3152,10
3190,9
3228,10
3266,14
3304,14
3342,4
3380,8
3418,8
3456,5
3494,10
3532,2
3570,6
3608,3
3646,3
3684,5
3722,0
3760,2
3797,3
3835,2
3873,3
3911,2
3949,1
3987,1
4025,0
4063,0
4101,0
4139,1
4177,1
4215,0
4253,0
4291,1
4329,1
4367,1
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
set output "evileye/histogram-Latency-populate-up-nClients=512-objectSize=0-up.png"
plot [:7558] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

