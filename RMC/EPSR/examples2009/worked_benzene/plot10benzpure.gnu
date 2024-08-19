reset
set title '/home/alan/EPSR17/run/benzene/benzpure'
set xlabel 'r [Å]'
set ylabel 'g_intra(r)'
set xrange [ 0.000E+00: 0.600E+01]
set yrange [ 0.000E+00: 0.100E+02]
set nologscale x
set nologscale y
set label   1 'C-C                          ' at  0.450E+01, 0.250E+00
set style line  1 lt   1 pt   6 ps    1.00
set label   2 'M-C                          ' at  0.450E+01, 0.225E+01
set style line  2 lt   2 pt   6 ps    1.00
set label   3 'M-M                          ' at  0.450E+01, 0.425E+01
set style line  3 lt   3 pt   6 ps    1.00
plot \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.y01' u   1:(   1.00000*column(  6)+   0.000) notitle w lines ls   1, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.y01' u   1:(   1.00000*column(  4)+   2.000) notitle w lines ls   2, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.y01' u   1:(   1.00000*column(  2)+   4.000) notitle w lines ls   3
