reset


unset title
set xlabel 'x [Å]'
set ylabel 'y [Å]'
set zlabel 'z [Å]'
set ticslevel  0.500000E-01
set xrange [-0.330E+01: 0.300E+01]
set yrange [-0.330E+01: 0.300E+01]
set zrange [-0.300E+01: 0.300E+01]
set view  0.850000E+02, 0.100000E+02

splot \
'/home/alan/EPSR17/run/benzene/benzene.splb' u 2:3:4 notitle w l lt 4 lw    0.10000, \
'/home/alan/EPSR17/run/benzene/benzene.spl01' u 2:3:4 notitle w p pt     7 ps  0.200000E+01 lt     6, \
'/home/alan/EPSR17/run/benzene/benzene.spl02' u 2:3:4 notitle w p pt     8 ps  0.650000E+01 lt     8

