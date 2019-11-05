
set title "Histogram of upstream latency"
$histo << EOD
0,1
673,2
1347,15
2021,32
2695,58
3369,110
4043,165
4716,168
5390,188
6064,230
6738,265
7412,261
8086,254
8759,318
9433,285
10107,201
10781,195
11455,189
12129,135
12803,144
13476,128
14150,95
14824,90
15498,84
16172,72
16846,57
17519,64
18193,58
18867,38
19541,31
20215,25
20889,30
21563,20
22236,23
22910,14
23584,13
24258,4
24932,3
25606,4
26279,2
26953,1
27627,1
28301,0
28975,3
29649,0
30322,1
30996,1
31670,0
32344,0
33018,1
33692,1
34366,1
35039,1
35713,0
36387,5
37061,0
37735,0
38409,2
39082,1
39756,0
40430,0
41104,0
41778,0
42452,0
43126,0
43799,0
44473,0
45147,0
45821,0
46495,0
47169,0
47842,0
48516,0
49190,0
49864,0
50538,0
51212,0
51886,0
52559,0
53233,0
53907,0
54581,0
55255,0
55929,0
56602,0
57276,1
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
86252,0
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
set output "evileye/histogram-Latency-read-down-nClients=4096-objectSize=32768-up.png"
plot [:134095] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
