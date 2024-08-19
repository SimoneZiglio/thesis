reset
set title 'C:\EPSR17\run\met\met_9_refined\met'
set xlabel 'Absolute energy [kJ/mole]'
set ylabel 'R-factor'
set xrange [ 0.000E+00: 0.130E+04]
set yrange [ 0.100E-05: 0.200E-01]
set nologscale x
set nologscale y
set label   1 ' Block 1                     ' at  0.975E+03, 0.100E+02
set style line  1 lt   1 pt   8 ps    0.30
plot \
'C:\EPSR17\run\met\met_9_refined\met.EPSR.erg' u   4:(   1.00000*column(  3)+   0.000) notitle w lines ls   1
