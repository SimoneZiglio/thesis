reset
set title '/home/alan/EPSR17/run/benzene/benzpure'
set xlabel 'r [Å]'
set ylabel 'g(r)'
set xrange [ 0.000E+00: 0.120E+02]
set yrange [ 0.000E+00: 0.400E+01]
set nologscale x
set nologscale y
set label   1 'C-C                          ' at  0.900E+01, 0.120E+01
set style line  1 lt   1 pt   6 ps    1.00
set label   2 'M-C                          ' at  0.900E+01, 0.220E+01
set style line  2 lt   2 pt   6 ps    1.00
set label   3 'M-M                          ' at  0.900E+01, 0.320E+01
set style line  3 lt   3 pt   6 ps    1.00
plot \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.g01' u   1:(   1.00000*column(  6)+   0.000) notitle w lines ls   1, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.r01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   0.000:1/0) notitle w p ls   1, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.g01' u   1:(   1.00000*column(  4)+   1.000) notitle w lines ls   2, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.r01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   1.000:1/0) notitle w p ls   2, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.g01' u   1:(   1.00000*column(  2)+   2.000) notitle w lines ls   3, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.r01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   2.000:1/0) notitle w p ls   3
