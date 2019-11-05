
set title "Histogram of undefinedstream latency"
$histo << EOD
0,434
673,1457
1347,920
2021,914
2695,2265
3369,5837
4043,22367
4716,18064
5390,9039
6064,2880
6738,1050
7412,1577
8086,730
8759,310
9433,320
10107,269
10781,245
11455,459
12129,588
12803,362
13476,180
14150,195
14824,169
15498,120
16172,123
16846,126
17519,65
18193,62
18867,51
19541,106
20215,73
20889,53
21563,68
22236,107
22910,70
23584,71
24258,45
24932,21
25606,46
26279,51
26953,47
27627,32
28301,22
28975,22
29649,34
30322,41
30996,38
31670,27
32344,22
33018,5
33692,2
34366,5
35039,11
35713,48
36387,15
37061,7
37735,7
38409,2
39082,6
39756,8
40430,9
41104,14
41778,13
42452,5
43126,8
43799,9
44473,2
45147,2
45821,6
46495,14
47169,4
47842,11
48516,1
49190,3
49864,3
50538,1
51212,1
51886,2
52559,2
53233,0
53907,0
54581,0
55255,0
55929,0
56602,0
57276,0
57950,0
58624,0
59298,0
59972,0
60645,0
61319,0
61993,0
62667,0
63341,0
64015,0
64689,0
65362,0
66036,0
66710,0
67384,0
68058,0
68732,0
69405,0
70079,0
70753,0
71427,0
72101,0
72775,0
73449,0
74122,0
74796,0
75470,0
76144,0
76818,0
77492,0
78165,0
78839,0
79513,0
80187,0
80861,0
81535,0
82208,0
82882,0
83556,0
84230,0
84904,0
85578,0
86252,2
86925,0
87599,0
88273,0
88947,0
89621,0
90295,0
90968,0
91642,0
92316,0
92990,0
93664,0
94338,0
95012,0
95685,0
96359,0
97033,0
97707,0
98381,0
99055,0
99728,0
100402,0
101076,0
101750,0
102424,0
103098,0
103772,0
104445,0
105119,0
105793,0
106467,0
107141,0
107815,0
108488,0
109162,0
109836,0
110510,0
111184,0
111858,0
112531,0
113205,0
113879,0
114553,0
115227,0
115901,0
116575,0
117248,0
117922,0
118596,0
119270,0
119944,0
120618,0
121291,0
121965,0
122639,0
123313,0
123987,0
124661,0
125335,0
126008,0
126682,0
127356,0
128030,0
128704,0
129378,0
130051,0
130725,0
131399,0
132073,0
132747,0
133421,0
134095,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=4096-objectSize=32768-undefined.png"
plot [:134095] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

