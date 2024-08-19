reset
set title 'C:\EPSR\examples_rh\water_2\water_4_refinement\water_1000'
set xlabel 'r [Å]'
set ylabel 'u(r) [kJ/mole]'
set xrange [ 0.000E+00: 0.120E+02]
set yrange [-0.500E+01: 0.400E+02]
set nologscale x
set nologscale y
set label   1 'OW-OW                        ' at  0.900E+01, 0.100E+01
set style line  1 lt   1 pt   8 ps    0.30
set label   2 'OW-HW                        ' at  0.900E+01, 0.600E+01
set style line  2 lt   2 pt   8 ps    0.30
set label   3 'HW-HW                        ' at  0.900E+01, 0.110E+02
set style line  3 lt   3 pt   8 ps    0.30
plot \
'C:\EPSR\examples_rh\water_2\water_4_refinement\water_1000.EPSR.p01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR\examples_rh\water_2\water_4_refinement\water_1000.EPSR.p01' u   1:(   1.00000*column(  4)+   5.000) notitle w lines ls   2, \
'C:\EPSR\examples_rh\water_2\water_4_refinement\water_1000.EPSR.p01' u   1:(   1.00000*column(  6)+  10.000) notitle w lines ls   3
