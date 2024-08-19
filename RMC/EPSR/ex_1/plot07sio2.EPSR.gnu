#reset
set title '/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2'
set xlabel 'Q [1/A]'
set ylabel 'F(Q)'
set xrange [ 0.000000E+00: 0.200000E+02]
set yrange [-0.100000E+01: 0.150000E+01]
set nologscale x
set nologscale y
unset grid
set label   1 'NeutronSiO2sq                ' at  0.100E+02, 0.100E+00
set style line   1 lt   1 pt   6 ps    0.40
plot \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.u01' u   1:( 0.10000E+01*(column(  2)+ 0.000E+00)) notitle w lines ls   1, \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.t01' u   1:(abs(column(  2))>=1.0e-5? 0.10000E+01*column(  2)+ 0.000E+00:1/0) notitle w p ls   1
