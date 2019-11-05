
set title "Histogram of delstream latency"
$histo << EOD
0,0
25,504
50,3594
76,3948
101,3204
126,3332
152,3887
177,4563
203,5237
228,6114
253,6982
279,7849
304,8570
330,9181
355,10110
380,10319
406,10873
431,11244
456,11189
482,11142
507,11262
533,10714
558,10630
583,9935
609,9380
634,8810
660,8396
685,7743
710,7214
736,6726
761,6161
786,5510
812,5006
837,4467
863,4041
888,3601
913,3170
939,2768
964,2521
990,2135
1015,1879
1040,1625
1066,1373
1091,1276
1117,1078
1142,874
1167,861
1193,685
1218,632
1243,520
1269,469
1294,430
1320,346
1345,306
1370,272
1396,255
1421,203
1447,183
1472,150
1497,153
1523,142
1548,119
1573,117
1599,80
1624,65
1650,76
1675,42
1700,36
1726,28
1751,43
1777,18
1802,21
1827,19
1853,22
1878,16
1904,12
1929,16
1954,9
1980,14
2005,6
2030,10
2056,8
2081,7
2107,5
2132,5
2157,4
2183,4
2208,3
2234,2
2259,0
2284,3
2310,1
2335,0
2360,2
2386,1
2411,0
2437,1
2462,0
2487,1
2513,1
2538,0
2564,0
2589,0
2614,0
2640,0
2665,0
2691,0
2716,0
2741,0
2767,0
2792,0
2817,0
2843,0
2868,0
2894,0
2919,0
2944,0
2970,0
2995,0
3021,0
3046,0
3071,0
3097,0
3122,0
3147,0
3173,0
3198,0
3224,0
3249,0
3274,0
3300,0
3325,0
3351,0
3376,0
3401,0
3427,0
3452,0
3478,0
3503,0
3528,0
3554,0
3579,0
3604,0
3630,0
3655,0
3681,0
3706,0
3731,0
3757,0
3782,0
3808,0
3833,0
3858,0
3884,0
3909,0
3934,0
3960,0
3985,0
4011,0
4036,0
4061,0
4087,0
4112,0
4138,0
4163,0
4188,0
4214,0
4239,0
4265,0
4290,0
4315,0
4341,0
4366,0
4391,0
4417,0
4442,0
4468,0
4493,0
4518,0
4544,0
4569,0
4595,0
4620,0
4645,0
4671,0
4696,0
4721,0
4747,0
4772,0
4798,0
4823,0
4848,0
4874,0
4899,0
4925,0
4950,0
4975,0
5001,0
5026,0
5052,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-cleanup-del-nClients=512-objectSize=0-del.png"
plot [:5052] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

