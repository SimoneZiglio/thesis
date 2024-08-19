reset
set title 'C:\EPSR\examples_rh\silica_with_silvia\silica_3_mc-only_equil_300K\sio2'
set xlabel 'Q [1/Å]'
set ylabel 'F(Q)'
set xrange [ 0.000E+00: 0.200E+02]
set yrange [-0.100E+01: 0.150E+01]
set nologscale x
set nologscale y
set label   1 'NeutronSiO2sq                ' at  0.140E+02, 0.100E+00
set style line  1 lt   1 pt   8 ps    0.30
plot \
'C:\EPSR\examples_rh\silica_with_silvia\silica_3_mc-only_equil_300K\sio2.EPSR.u01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_3_mc-only_equil_300K\sio2.EPSR.t01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1
