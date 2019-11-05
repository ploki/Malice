
set title "Histogram of upstream latency"
$histo << EOD
0,0
19,2
39,17
59,82
79,301
98,592
118,771
138,711
158,716
177,554
197,626
217,530
237,563
256,656
276,691
296,707
316,739
335,850
355,899
375,944
395,967
415,1014
434,1026
454,1064
474,1110
494,1097
513,1123
533,1040
553,1053
573,1062
592,964
612,989
632,1048
652,1006
671,938
691,881
711,885
731,849
751,838
770,762
790,741
810,769
830,700
849,695
869,632
889,632
909,534
928,581
948,534
968,540
988,509
1007,473
1027,391
1047,430
1067,391
1087,364
1106,338
1126,343
1146,319
1166,310
1185,284
1205,251
1225,261
1245,259
1264,206
1284,204
1304,206
1324,208
1343,171
1363,178
1383,168
1403,146
1422,122
1442,132
1462,142
1482,118
1502,103
1521,112
1541,98
1561,111
1581,67
1600,82
1620,74
1640,90
1660,68
1679,59
1699,73
1719,64
1739,71
1758,54
1778,47
1798,52
1818,48
1838,30
1857,46
1877,32
1897,29
1917,45
1936,37
1956,25
1976,18
1996,29
2015,21
2035,20
2055,13
2075,17
2094,24
2114,19
2134,18
2154,16
2174,12
2193,7
2213,10
2233,10
2253,14
2272,5
2292,9
2312,8
2332,11
2351,5
2371,4
2391,5
2411,5
2430,7
2450,5
2470,5
2490,5
2510,4
2529,5
2549,5
2569,7
2589,3
2608,2
2628,5
2648,4
2668,8
2687,2
2707,5
2727,3
2747,5
2766,3
2786,4
2806,1
2826,2
2845,0
2865,5
2885,3
2905,0
2925,2
2944,0
2964,2
2984,0
3004,0
3023,0
3043,1
3063,1
3083,1
3102,0
3122,0
3142,1
3162,1
3181,1
3201,0
3221,0
3241,0
3261,0
3280,0
3300,0
3320,0
3340,0
3359,0
3379,0
3399,0
3419,0
3438,0
3458,0
3478,0
3498,1
3517,0
3537,1
3557,0
3577,0
3597,0
3616,1
3636,0
3656,0
3676,0
3695,0
3715,0
3735,0
3755,0
3774,0
3794,0
3814,0
3834,0
3853,1
3873,0
3893,0
3913,0
3933,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=512-objectSize=0-up.png"
plot [:3933] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

