reset


unset title
set xlabel 'x [Å]'
set ylabel 'y [Å]'
set zlabel 'z [Å]'
set ticslevel  0.500000E-01
set xrange [-0.110E+01: 0.100E+01]
set yrange [-0.110E+01: 0.100E+01]
set zrange [-0.100E+01: 0.100E+01]
set view  0.300000E+02, 0.300000E+02

splot \
'C:\EPSR\examples_rh\water_2\water_1_making_ato\water.splb' u 2:3:4 notitle w l lt 4 lw    0.10000, \
'C:\EPSR\examples_rh\water_2\water_1_making_ato\water.spl01' u 2:3:4 notitle w p pt     8 ps  0.100000E+02 lt     1, \
'C:\EPSR\examples_rh\water_2\water_1_making_ato\water.spl02' u 2:3:4 notitle w p pt     7 ps  0.600000E+01 lt     6

