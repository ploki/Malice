
set title "Histogram of upstream latency"
$histo << EOD
0,0
1,0
2,0
3,0
4,0
5,0
7,3
8,67
9,291
10,752
11,1511
12,2092
14,2688
15,2992
16,3125
17,2768
18,2258
19,1802
21,1279
22,867
23,668
24,476
25,368
26,230
28,188
29,120
30,94
31,55
32,43
33,43
35,25
36,21
37,18
38,7
39,9
40,3
42,4
43,3
44,4
45,2
46,1
48,0
49,0
50,1
51,0
52,0
53,0
55,0
56,0
57,0
58,0
59,0
60,0
62,0
63,2
64,0
65,1
66,0
67,0
69,0
70,0
71,0
72,0
73,0
74,0
76,0
77,0
78,1
79,0
80,0
81,0
83,2
84,0
85,0
86,1
87,1
88,0
90,0
91,0
92,0
93,0
94,0
96,0
97,0
98,0
99,0
100,0
101,1
103,0
104,0
105,0
106,0
107,1
108,0
110,1
111,0
112,0
113,0
114,0
115,0
117,0
118,0
119,0
120,0
121,0
122,0
124,0
125,0
126,0
127,1
128,0
129,1
131,0
132,0
133,0
134,0
135,1
136,2
138,0
139,0
140,0
141,2
142,0
144,1
145,0
146,1
147,0
148,0
149,0
151,1
152,1
153,0
154,1
155,0
156,0
158,1
159,0
160,0
161,3
162,3
163,1
165,0
166,2
167,0
168,0
169,0
170,0
172,0
173,0
174,0
175,0
176,0
177,0
179,0
180,0
181,0
182,0
183,0
184,0
186,0
187,0
188,0
189,0
190,0
192,0
193,0
194,1
195,0
196,0
197,0
199,1
200,0
201,0
202,0
203,0
204,0
206,1
207,1
208,0
209,0
210,0
211,0
213,0
214,0
215,0
216,1
217,0
218,0
220,0
221,0
222,0
223,0
224,0
225,0
227,0
228,0
229,0
230,0
231,0
233,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=0-up.png"
plot [:233] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

