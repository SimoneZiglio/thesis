reset
set title 'C:\EPSR17\run\met\met_9_refined\met'
set xlabel 'Iteration number'
set ylabel 'U [kJ/mole]'
set xrange [ 0.000E+00: 0.200E+05]
set yrange [-0.200E+03: 0.200E+03]
set nologscale x
set nologscale y
set label   1 ' Block 1                     ' at  0.150E+05, 0.250E+00
set style line  1 lt   1 pt   8 ps    0.30
plot \
'C:\EPSR17\run\met\met_9_refined\met.EPSR.erg' u   0:(   1.00000*column(  1)+   0.000) notitle w lines ls   1
