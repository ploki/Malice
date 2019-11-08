
set title "Histogram of downstream latency"
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
21,1
22,0
23,0
24,2
25,0
26,5
27,1
28,4
29,9
30,15
31,7
32,11
33,21
34,24
35,48
36,36
37,74
38,63
39,76
40,109
41,143
42,145
43,158
44,178
45,203
46,213
47,226
48,259
49,261
50,327
51,346
52,316
53,340
54,370
55,326
56,361
57,400
58,373
59,359
60,381
61,372
62,343
63,337
64,315
65,330
66,304
67,287
68,282
69,285
70,272
71,229
72,222
73,232
74,202
75,196
76,173
77,170
78,148
79,147
80,144
81,120
82,115
83,115
84,98
85,100
86,95
87,68
88,60
89,79
90,59
91,54
92,52
93,41
94,57
95,22
96,34
97,31
98,24
99,21
100,24
101,19
102,14
103,16
104,16
105,10
106,16
107,10
108,11
109,7
110,4
111,4
112,10
113,5
114,3
115,5
116,12
117,7
118,4
119,0
120,5
121,1
122,0
123,1
124,1
125,1
126,0
127,1
128,2
129,0
130,1
131,0
132,3
133,3
134,2
135,0
136,0
137,1
138,0
139,1
140,0
141,1
142,0
143,0
144,0
145,1
146,0
147,0
148,0
149,0
150,0
151,0
152,0
153,0
154,1
155,0
156,0
157,0
158,0
159,0
160,0
161,0
162,0
163,0
164,0
165,0
166,0
167,0
168,0
169,0
170,0
171,0
172,0
173,0
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
193,0
194,0
195,0
196,0
197,0
198,0
199,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-read-down-nClients=8-objectSize=1048576-down.png"
plot [:200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
