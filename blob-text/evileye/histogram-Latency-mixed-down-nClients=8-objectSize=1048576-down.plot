
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
22,3
23,4
24,6
25,5
26,10
27,18
28,15
29,21
30,31
31,40
32,47
33,67
34,62
35,75
36,88
37,106
38,102
39,135
40,121
41,122
42,122
43,150
44,131
45,154
46,154
47,152
48,163
49,165
50,172
51,175
52,165
53,145
54,177
55,159
56,158
57,150
58,136
59,150
60,123
61,125
62,115
63,115
64,109
65,104
66,96
67,88
68,87
69,75
70,65
71,74
72,80
73,57
74,59
75,43
76,61
77,37
78,37
79,43
80,46
81,30
82,26
83,39
84,28
85,29
86,30
87,28
88,23
89,22
90,19
91,22
92,11
93,16
94,12
95,18
96,7
97,8
98,6
99,9
100,8
101,6
102,6
103,5
104,8
105,3
106,3
107,6
108,3
109,6
110,2
111,4
112,3
113,1
114,4
115,0
116,2
117,1
118,1
119,0
120,1
121,0
122,1
123,1
124,1
125,0
126,0
127,2
128,1
129,1
130,1
131,0
132,0
133,0
134,1
135,1
136,0
137,0
138,1
139,0
140,0
141,0
142,0
143,0
144,1
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
set output "evileye/histogram-Latency-mixed-down-nClients=8-objectSize=1048576-down.png"
plot [:200] [0:] '$histo' using 1:2 title 'Crowd of requests over Latency' with lines

