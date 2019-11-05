
set title "Histogram of upstream latency"
$histo << EOD
0,0
34,0
69,0
104,0
139,0
174,0
209,0
244,0
279,0
314,0
349,0
384,0
419,0
454,0
489,0
524,0
559,0
594,0
629,0
664,0
699,0
734,0
769,0
804,0
839,0
874,0
909,0
944,0
979,0
1013,0
1048,0
1083,0
1118,0
1153,0
1188,0
1223,0
1258,0
1293,0
1328,0
1363,0
1398,0
1433,0
1468,0
1503,0
1538,0
1573,0
1608,0
1643,0
1678,0
1713,0
1748,0
1783,0
1818,0
1853,0
1888,0
1923,0
1958,0
1992,0
2027,0
2062,0
2097,1
2132,1
2167,2
2202,0
2237,2
2272,3
2307,2
2342,2
2377,3
2412,1
2447,4
2482,0
2517,5
2552,4
2587,1
2622,3
2657,2
2692,9
2727,4
2762,7
2797,3
2832,1
2867,5
2902,4
2937,6
2972,3
3006,5
3041,3
3076,3
3111,3
3146,3
3181,4
3216,7
3251,14
3286,21
3321,46
3356,63
3391,118
3426,187
3461,302
3496,442
3531,585
3566,631
3601,782
3636,913
3671,1100
3706,1191
3741,1400
3776,1602
3811,1723
3846,1923
3881,1983
3916,2041
3951,2093
3985,2047
4020,2003
4055,1947
4090,1815
4125,1670
4160,1523
4195,1251
4230,1077
4265,992
4300,911
4335,697
4370,574
4405,478
4440,385
4475,267
4510,226
4545,159
4580,157
4615,97
4650,63
4685,62
4720,52
4755,47
4790,42
4825,27
4860,23
4895,27
4930,23
4965,9
4999,23
5034,16
5069,10
5104,11
5139,18
5174,12
5209,18
5244,11
5279,8
5314,14
5349,14
5384,12
5419,13
5454,9
5489,15
5524,5
5559,6
5594,9
5629,9
5664,9
5699,10
5734,5
5769,2
5804,10
5839,4
5874,6
5909,4
5944,11
5978,4
6013,2
6048,6
6083,4
6118,2
6153,2
6188,6
6223,3
6258,1
6293,2
6328,1
6363,4
6398,4
6433,4
6468,3
6503,0
6538,1
6573,3
6608,0
6643,3
6678,0
6713,0
6748,0
6783,0
6818,1
6853,0
6888,0
6923,0
6957,1
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=512-objectSize=1048576-up.png"
plot [:6958] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
