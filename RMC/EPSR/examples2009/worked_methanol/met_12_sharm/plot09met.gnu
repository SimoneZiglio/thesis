reset
set title 'C:\EPSR17\run\met\met_11_accumulated\met'
set xlabel 'r [Å]'
set ylabel 'g(r)'
set xrange [ 0.000E+00: 0.160E+02]
set yrange [-0.300E+01: 0.300E+02]
set nologscale x
set nologscale y
set label   1 'C-C                          ' at  0.120E+02, 0.200E+01
set style line  1 lt   1 pt   8 ps    0.30
set label   2 'C-M                          ' at  0.120E+02, 0.700E+01
set style line  2 lt   2 pt   8 ps    0.30
set label   3 'C-O                          ' at  0.120E+02, 0.120E+02
set style line  3 lt   3 pt   8 ps    0.30
plot \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.g01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.r01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.g01' u   1:(   1.00000*column(  4)+   5.000) notitle w lines ls   2, \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.r01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   5.000:1/0) notitle w p ls   2, \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.g01' u   1:(   1.00000*column(  6)+  10.000) notitle w lines ls   3, \
'C:\EPSR17\run\met\met_11_accumulated\met.EPSR.r01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+  10.000:1/0) notitle w p ls   3
