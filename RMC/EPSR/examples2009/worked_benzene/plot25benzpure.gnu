reset
set title '/home/alan/EPSR17/run/benzene/benzpure'
set xlabel 'Absolute energy [kJ/mole]'
set ylabel 'R-factor'
set xrange [ 0.000E+00: 0.600E+03]
set yrange [ 0.000E+00: 0.100E-01]
set nologscale x
set nologscale y
set label   1 ' Block 1                     ' at  0.450E+03, 0.000E+00
set style line  1 lt   1 pt   6 ps    1.00
plot \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.erg' u   4:(   1.00000*column(  3)+   0.000) notitle w lines ls   1, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.qdr' u   4:(abs(column(  3))>=1.0e-5?   1.00000*column(  3)+   0.000:1/0) notitle w p ls   1
