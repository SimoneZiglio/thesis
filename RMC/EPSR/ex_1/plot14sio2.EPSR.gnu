#reset
set title 'energy'
set xlabel 'Iteration number'
set ylabel 'U [kJ/mole]'
set xrange [ 0.180000E+04: 0.800000E+04]
set yrange [-0.400000E+04:-0.320000E+04]
set nologscale x
set nologscale y
unset grid
set style line   1 lt   1 pt   6 ps    0.40
plot \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/sio2.EPSR.erg' u   0:( 0.10000E+01*(column(  1)+ 0.000E+00)) title " Block           1" w lines ls   1
