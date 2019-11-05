
set title "Histogram of upstream latency"
$histo << EOD
0,0
128,0
256,0
385,0
513,0
642,0
770,0
899,0
1027,0
1156,0
1284,0
1412,0
1541,0
1669,0
1798,0
1926,0
2055,0
2183,0
2312,0
2440,0
2569,0
2697,0
2825,0
2954,0
3082,0
3211,0
3339,0
3468,0
3596,0
3725,0
3853,0
3982,0
4110,0
4238,0
4367,0
4495,0
4624,0
4752,0
4881,0
5009,0
5138,5
5266,2
5394,1
5523,0
5651,0
5780,0
5908,0
6037,0
6165,0
6294,0
6422,0
6551,1
6679,0
6807,4
6936,5
7064,6
7193,1
7321,3
7450,1
7578,0
7707,6
7835,5
7964,10
8092,2
8220,6
8349,16
8477,13
8606,19
8734,31
8863,40
8991,46
9120,65
9248,79
9377,91
9505,107
9633,174
9762,215
9890,209
10019,224
10147,167
10276,104
10404,81
10533,57
10661,30
10789,26
10918,25
11046,10
11175,7
11303,3
11432,5
11560,6
11689,3
11817,3
11946,4
12074,2
12202,1
12331,1
12459,1
12588,0
12716,0
12845,0
12973,0
13102,0
13230,0
13359,0
13487,0
13615,0
13744,0
13872,0
14001,0
14129,0
14258,0
14386,0
14515,0
14643,0
14772,0
14900,0
15028,0
15157,0
15285,0
15414,0
15542,0
15671,0
15799,0
15928,0
16056,0
16184,0
16313,0
16441,0
16570,0
16698,0
16827,0
16955,0
17084,0
17212,0
17341,0
17469,0
17597,0
17726,0
17854,0
17983,0
18111,0
18240,0
18368,0
18497,0
18625,0
18754,0
18882,0
19010,0
19139,0
19267,0
19396,0
19524,0
19653,0
19781,0
19910,0
20038,0
20167,0
20295,0
20423,0
20552,0
20680,0
20809,0
20937,0
21066,0
21194,0
21323,0
21451,0
21579,0
21708,0
21836,0
21965,0
22093,0
22222,0
22350,0
22479,0
22607,0
22736,0
22864,0
22992,0
23121,0
23249,0
23378,0
23506,0
23635,0
23763,0
23892,0
24020,0
24149,0
24277,0
24405,0
24534,0
24662,0
24791,0
24919,0
25048,0
25176,0
25305,0
25433,0
25562,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-populate-up-nClients=64-objectSize=33554432-up.png"
plot [:25562] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
