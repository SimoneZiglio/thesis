reset


unset title
set xlabel 'x [\C'
set ylabel 'y [\C'
set zlabel 'z [\C'
set ticslevel  0.500000E-01
set xrange [-0.110E+01: 0.100E+01]
set yrange [-0.110E+01: 0.100E+01]
set zrange [-0.100E+01: 0.100E+01]
set view  0.300000E+02, 0.300000E+02

splot \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/o.splb' u 2:3:4 notitle w l lt 4 lw    0.10000, \
'/home/simo/Scrivania/Thesis/EPSR/ex_1/o.spl01' u 2:3:4 notitle w p pt     0 ps  0.000000E+00 lt     0

