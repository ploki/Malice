
set title "Histogram of upstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,0
6,0
7,0
8,0
9,0
10,0
11,0
12,0
13,0
14,0
15,0
16,0
17,0
18,0
19,0
20,0
21,0
22,0
23,0
24,0
25,0
26,0
27,0
28,0
29,0
30,0
31,0
32,1
33,2
34,3
35,0
36,2
37,6
38,6
39,8
40,11
41,9
42,24
43,17
44,27
45,37
46,53
47,51
48,61
49,67
50,83
51,81
52,76
53,100
54,118
55,106
56,143
57,120
58,150
59,150
60,131
61,126
62,161
63,153
64,135
65,157
66,142
67,158
68,160
69,150
70,154
71,145
72,126
73,127
74,143
75,142
76,134
77,122
78,107
79,119
80,128
81,128
82,109
83,112
84,99
85,100
86,100
87,85
88,74
89,71
90,76
91,81
92,65
93,67
94,49
95,55
96,57
97,38
98,47
99,46
100,39
101,34
102,38
103,34
104,34
105,34
106,27
107,33
108,24
109,29
110,29
111,17
112,21
113,21
114,11
115,19
116,26
117,11
118,19
119,14
120,11
121,13
122,14
123,6
124,10
125,4
126,8
127,7
128,6
129,2
130,6
131,9
132,4
133,6
134,4
135,3
136,3
137,6
138,1
139,1
140,1
141,2
142,2
143,0
144,2
145,0
146,1
147,0
148,1
149,1
150,1
151,0
152,0
153,0
154,1
155,0
156,0
157,1
158,0
159,0
160,1
161,0
162,1
163,1
164,1
165,0
166,0
167,0
168,0
169,1
170,0
171,0
172,0
173,2
174,0
175,0
176,0
177,0
178,0
179,0
180,0
181,0
182,0
183,0
184,0
185,0
186,0
187,0
188,0
189,0
190,0
191,0
192,0
193,1
194,1
195,1
196,0
197,0
198,0
199,10
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-up-nClients=8-objectSize=1048576-up.png"
plot [:200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

