
set title "Histogram of upstream bytes per second"
$histo << EOD
0,16
519969,0
1039938,0
1559908,0
2079877,0
2599846,0
3119816,0
3639785,0
4159755,0
4679724,0
5199693,0
5719663,0
6239632,0
6759601,0
7279571,0
7799540,0
8319510,0
8839479,0
9359448,0
9879418,0
10399387,0
10919356,0
11439326,0
11959295,0
12479265,0
12999234,0
13519203,0
14039173,0
14559142,0
15079112,0
15599081,0
16119050,0
16639020,0
17158989,0
17678958,0
18198928,0
18718897,0
19238867,0
19758836,0
20278805,0
20798775,0
21318744,0
21838713,0
22358683,0
22878652,0
23398622,0
23918591,0
24438560,0
24958530,0
25478499,0
25998468,0
26518438,0
27038407,0
27558377,0
28078346,0
28598315,0
29118285,0
29638254,0
30158224,0
30678193,0
31198162,0
31718132,0
32238101,0
32758070,0
33278040,0
33798009,0
34317979,0
34837948,0
35357917,0
35877887,0
36397856,0
36917825,0
37437795,0
37957764,0
38477734,0
38997703,0
39517672,0
40037642,0
40557611,0
41077581,0
41597550,0
42117519,0
42637489,0
43157458,0
43677427,0
44197397,0
44717366,0
45237336,0
45757305,0
46277274,0
46797244,0
47317213,0
47837182,0
48357152,0
48877121,0
49397091,0
49917060,0
50437029,0
50956999,0
51476968,0
51996937,0
52516907,0
53036876,0
53556846,0
54076815,0
54596784,0
55116754,0
55636723,0
56156693,0
56676662,0
57196631,0
57716601,0
58236570,0
58756539,0
59276509,0
59796478,0
60316448,0
60836417,0
61356386,0
61876356,0
62396325,0
62916294,0
63436264,0
63956233,0
64476203,0
64996172,0
65516141,0
66036111,0
66556080,0
67076050,0
67596019,0
68115988,0
68635958,0
69155927,0
69675896,0
70195866,0
70715835,0
71235805,0
71755774,0
72275743,0
72795713,0
73315682,0
73835651,0
74355621,0
74875590,0
75395560,0
75915529,0
76435498,0
76955468,0
77475437,0
77995406,0
78515376,0
79035345,0
79555315,0
80075284,0
80595253,0
81115223,0
81635192,0
82155162,0
82675131,0
83195100,0
83715070,0
84235039,0
84755008,0
85274978,0
85794947,0
86314917,0
86834886,0
87354855,0
87874825,0
88394794,0
88914763,0
89434733,0
89954702,0
90474672,0
90994641,0
91514610,0
92034580,0
92554549,0
93074519,0
93594488,0
94114457,0
94634427,0
95154396,0
95674365,0
96194335,0
96714304,0
97234274,0
97754243,0
98274212,0
98794182,0
99314151,0
99834120,0
100354090,0
100874059,0
101394029,0
101913998,0
102433967,0
102953937,0
103473906,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-clientBW-read-down-objectSize=10485760-up.png"
plot [:3919] [0:] '$histo' using 1:2 title 'Crowd of requests over clientBW' with lines

