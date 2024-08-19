reset
set title '/home/alan/EPSR17/run/benzene/benzpure'
set xlabel 'r [Å]'
set ylabel 'u(r) [kJ/mole]'
set xrange [ 0.000E+00: 0.100E+02]
set yrange [-0.300E+02: 0.500E+02]
set nologscale x
set nologscale y
set label   1 'C-C                          ' at  0.750E+01, 0.500E+01
set style line  1 lt   1 pt   6 ps    1.00
set label   2 'M-C                          ' at  0.750E+01, 0.150E+02
set style line  2 lt   2 pt   6 ps    1.00
set label   3 'M-M                          ' at  0.750E+01, 0.250E+02
set style line  3 lt   3 pt   6 ps    1.00
plot \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.p01' u   1:(   1.00000*column(  6)+   0.000) notitle w lines ls   1, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.p01' u   1:(   1.00000*column(  4)+  10.000) notitle w lines ls   2, \
'/home/alan/EPSR17/run/benzene/benzpure.EPSR.p01' u   1:(   1.00000*column(  2)+  20.000) notitle w lines ls   3
