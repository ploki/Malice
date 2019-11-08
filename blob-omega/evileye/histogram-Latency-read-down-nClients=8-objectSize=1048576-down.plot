
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
21,0
22,0
23,2
24,2
25,0
26,0
27,1
28,4
29,10
30,15
31,12
32,25
33,26
34,30
35,51
36,65
37,85
38,85
39,68
40,126
41,120
42,156
43,175
44,207
45,205
46,244
47,267
48,280
49,294
50,310
51,344
52,350
53,349
54,350
55,380
56,323
57,378
58,380
59,379
60,355
61,320
62,367
63,340
64,285
65,317
66,300
67,290
68,276
69,253
70,242
71,255
72,218
73,216
74,189
75,169
76,169
77,157
78,139
79,136
80,142
81,149
82,90
83,107
84,97
85,107
86,74
87,81
88,77
89,64
90,54
91,53
92,69
93,44
94,35
95,37
96,27
97,28
98,41
99,28
100,31
101,16
102,21
103,18
104,17
105,18
106,16
107,7
108,13
109,11
110,6
111,6
112,3
113,6
114,4
115,3
116,3
117,4
118,3
119,5
120,3
121,4
122,4
123,2
124,1
125,0
126,1
127,2
128,3
129,1
130,0
131,2
132,1
133,0
134,0
135,2
136,0
137,1
138,0
139,0
140,0
141,0
142,0
143,2
144,0
145,0
146,0
147,1
148,0
149,0
150,0
151,0
152,0
153,0
154,0
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

