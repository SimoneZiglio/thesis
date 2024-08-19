reset
set title '/home/aks45/EPSR17/run/benzene/benzpure'
set xlabel 'Q [1/Å]'
set ylabel 'S_intra(Q)'
set xrange [ 0.000E+00: 0.200E+02]
set yrange [-0.300E+01: 0.900E+01]
set nologscale x
set nologscale y
set label   1 'M-M                          ' at  0.150E+02, 0.250E+00
set style line  1 lt   1 pt   6 ps    2.00
set label   2 'M-C                          ' at  0.150E+02, 0.325E+01
set style line  2 lt   2 pt   6 ps    2.00
set label   3 'C-C                          ' at  0.150E+02, 0.625E+01
set style line  3 lt   3 pt   6 ps    2.00
plot \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.s01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.s01' u   1:(   1.00000*column(  4)+   3.000) notitle w lines ls   2, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.s01' u   1:(   1.00000*column(  6)+   6.000) notitle w lines ls   3
