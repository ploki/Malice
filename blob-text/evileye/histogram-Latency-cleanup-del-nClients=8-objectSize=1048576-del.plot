
set title "Histogram of delstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,0
6,8
7,12
8,64
9,266
10,733
11,1469
12,2505
13,3434
14,4392
15,4648
16,4340
17,3870
18,3003
19,2327
20,1649
21,1249
22,929
23,652
24,428
25,358
26,251
27,209
28,166
29,97
30,79
31,56
32,34
33,51
34,29
35,15
36,16
37,8
38,8
39,10
40,4
41,8
42,0
43,5
44,5
45,3
46,1
47,2
48,1
49,3
50,5
51,3
52,0
53,1
54,0
55,0
56,2
57,2
58,1
59,0
60,0
61,1
62,0
63,1
64,0
65,1
66,1
67,1
68,0
69,1
70,0
71,0
72,0
73,0
74,0
75,1
76,0
77,0
78,0
79,0
80,0
81,0
82,0
83,0
84,0
85,0
86,0
87,0
88,0
89,0
90,0
91,0
92,0
93,0
94,0
95,0
96,0
97,0
98,0
99,0
100,0
101,0
102,0
103,0
104,0
105,0
106,0
107,0
108,0
109,0
110,0
111,0
112,0
113,0
114,0
115,0
116,0
117,0
118,0
119,0
120,0
121,0
122,0
123,0
124,0
125,0
126,0
127,0
128,0
129,0
130,0
131,0
132,0
133,0
134,0
135,0
136,0
137,0
138,0
139,0
140,0
141,0
142,0
143,0
144,0
145,0
146,0
147,0
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
set output "evileye/histogram-Latency-cleanup-del-nClients=8-objectSize=1048576-del.png"
plot [:200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines
