
set title "Histogram of upstream latency"
$histo << EOD
0,0
36,0
73,0
109,0
146,0
182,0
219,0
255,0
292,0
329,0
365,0
402,0
438,0
475,0
511,0
548,0
584,0
621,0
658,0
694,0
731,0
767,0
804,0
840,0
877,0
913,0
950,0
987,0
1023,0
1060,0
1096,0
1133,0
1169,0
1206,0
1242,0
1279,0
1316,0
1352,0
1389,0
1425,0
1462,0
1498,0
1535,0
1571,0
1608,0
1645,0
1681,0
1718,0
1754,0
1791,0
1827,0
1864,0
1901,0
1937,0
1974,0
2010,0
2047,0
2083,0
2120,0
2156,0
2193,0
2230,0
2266,0
2303,0
2339,0
2376,0
2412,0
2449,0
2485,0
2522,0
2559,0
2595,0
2632,0
2668,0
2705,0
2741,0
2778,0
2814,0
2851,0
2888,0
2924,0
2961,0
2997,0
3034,0
3070,1
3107,5
3143,7
3180,16
3217,18
3253,25
3290,13
3326,19
3363,24
3399,17
3436,29
3472,17
3509,16
3546,14
3582,19
3619,20
3655,21
3692,14
3728,15
3765,22
3802,24
3838,23
3875,18
3911,18
3948,12
3984,14
4021,5
4057,17
4094,7
4131,4
4167,8
4204,6
4240,5
4277,5
4313,6
4350,1
4386,1
4423,3
4460,0
4496,1
4533,1
4569,0
4606,1
4642,0
4679,0
4715,0
4752,0
4789,0
4825,0
4862,0
4898,0
4935,0
4971,0
5008,0
5044,0
5081,0
5118,0
5154,0
5191,0
5227,0
5264,0
5300,0
5337,0
5373,0
5410,0
5447,0
5483,0
5520,0
5556,0
5593,0
5629,0
5666,0
5703,0
5739,0
5776,0
5812,0
5849,0
5885,0
5922,0
5958,0
5995,0
6032,0
6068,0
6105,0
6141,0
6178,0
6214,0
6251,0
6287,0
6324,0
6361,0
6397,0
6434,0
6470,0
6507,0
6543,0
6580,0
6616,0
6653,0
6690,0
6726,0
6763,0
6799,0
6836,0
6872,0
6909,0
6945,0
6982,0
7019,0
7055,0
7092,0
7128,0
7165,0
7201,0
7238,0
7275,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=512-objectSize=1048576-up.png"
plot [:7275] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

