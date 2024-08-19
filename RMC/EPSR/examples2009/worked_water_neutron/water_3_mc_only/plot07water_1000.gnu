reset
set title 'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000'
set xlabel 'Q [1/Å]'
set ylabel 'F(Q)'
set xrange [ 0.000E+00: 0.200E+02]
set yrange [-0.100E+01: 0.350E+01]
set nologscale x
set nologscale y
set label   1 'H2O                          ' at  0.140E+02, 0.100E+00
set style line  1 lt   1 pt   8 ps    0.30
set label   2 'D2O                          ' at  0.140E+02, 0.110E+01
set style line  2 lt   2 pt   8 ps    0.30
set label   3 'HDO                          ' at  0.140E+02, 0.210E+01
set style line  3 lt   3 pt   8 ps    0.30
plot \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.u01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.t01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.u01' u   1:(   1.00000*column(  4)+   1.000) notitle w lines ls   2, \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.t01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   1.000:1/0) notitle w p ls   2, \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.u01' u   1:(   1.00000*column(  6)+   2.000) notitle w lines ls   3, \
'C:\EPSR\examples_rh\water_2\water_3_mc_only\water_1000.EPSR.t01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   2.000:1/0) notitle w p ls   3
