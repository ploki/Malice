
set title "Histogram of upstream bytes per second"
$histo << EOD
0,126837
0,1
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
0,0
EOD
set datafile separator comma
set term png size 1024,576
set logscale x
set output "evileye/histogram-clientBW-populate-up-objectSize=0-up.png"
plot [:44733] [0:] '$histo' using 1:2 title 'Crowd of requests over clientBW' with lines

