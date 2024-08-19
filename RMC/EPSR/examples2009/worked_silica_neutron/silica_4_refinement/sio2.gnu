reset


unset title
set xlabel 'x [Å]'
set ylabel 'y [Å]'
set zlabel 'z [Å]'
set ticslevel  0.500000E-01
set xrange [-0.132E+02: 0.120E+02]
set yrange [-0.132E+02: 0.120E+02]
set zrange [-0.120E+02: 0.120E+02]
set view  0.300000E+02, 0.300000E+02

splot \
'C:\EPSR\examples_rh\silica_with_silvia\silica_1_making_ato_and_inp\sio2.splb' u 2:3:4 notitle w l lt 4 lw    0.10000, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_1_making_ato_and_inp\sio2.spl01' u 2:3:4 notitle w p pt     8 ps  0.833333E+00 lt     1, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_1_making_ato_and_inp\sio2.spl02' u 2:3:4 notitle w p pt     8 ps  0.833333E+00 lt     5

