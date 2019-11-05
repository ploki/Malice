
set title "Histogram of upstream latency"
$histo << EOD
0,1
25,353
50,3338
76,3904
101,3150
126,2979
152,3446
177,4125
203,4797
228,5767
253,6598
279,7469
304,8234
330,9032
355,9513
380,10071
406,10600
431,10783
456,10877
482,10815
507,10882
533,10471
558,10310
583,9909
609,9580
634,9026
660,8417
685,7933
710,7403
736,6960
761,6269
786,5727
812,5211
837,4658
863,4263
888,3798
913,3487
939,3186
964,2743
990,2517
1015,2144
1040,1878
1066,1710
1091,1459
1117,1323
1142,1148
1167,1007
1193,886
1218,756
1243,656
1269,576
1294,556
1320,419
1345,370
1370,350
1396,298
1421,276
1447,226
1472,239
1497,170
1523,176
1548,150
1573,118
1599,118
1624,99
1650,117
1675,73
1700,75
1726,65
1751,68
1777,56
1802,58
1827,38
1853,37
1878,30
1904,32
1929,20
1954,19
1980,17
2005,22
2030,11
2056,13
2081,17
2107,6
2132,8
2157,8
2183,6
2208,4
2234,7
2259,2
2284,7
2310,5
2335,6
2360,2
2386,2
2411,1
2437,2
2462,1
2487,0
2513,0
2538,0
2564,1
2589,4
2614,0
2640,0
2665,0
2691,0
2716,0
2741,1
2767,1
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
3681,1
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
set output "evileye/histogram-Latency-populate-up-nClients=512-objectSize=0-up.png"
plot [:5052] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

