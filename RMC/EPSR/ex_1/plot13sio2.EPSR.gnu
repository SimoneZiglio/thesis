#reset
set title '/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2'
set xlabel 'r [A]'
set ylabel 'u(r) [kJ/mole]'
set autoscale x
set autoscale y
set nologscale x
set nologscale y
unset grid
set style line   1 lt   1 pt   6 ps    0.40
set style line   2 lt   2 pt   6 ps    0.40
set style line   3 lt   3 pt   6 ps    0.40
plot \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.p01' u   1:( 0.10000E+01*(column(  2)+ 0.000E+00)) title "O-O" w lines ls   1, \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.p01' u   1:( 0.10000E+01*(column(  4)+ 0.500E+01)) title "O-Si" w lines ls   2, \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.p01' u   1:( 0.10000E+01*(column(  6)+ 0.100E+02)) title "Si-Si" w lines ls   3
