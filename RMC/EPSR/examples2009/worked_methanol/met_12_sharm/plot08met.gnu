reset
set title 'C:\EPSR17\run\met\met_12_sharm\met'
set xlabel 'r [Å]'
set ylabel 'g(r)'
set xrange [ 0.000E+00: 0.120E+02]
set yrange [ 0.000E+00: 0.600E+01]
set nologscale x
set nologscale y
set label   1 'O-O                          ' at  0.900E+01, 0.120E+01
set style line  1 lt   1 pt   8 ps    0.30
plot \
'C:\EPSR17\run\met\met_12_sharm\met.EPSR.g01' u   1:(   1.00000*column( 16)+   0.000) notitle w lines ls   1
