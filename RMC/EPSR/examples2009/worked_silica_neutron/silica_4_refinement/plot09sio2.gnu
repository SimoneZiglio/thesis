reset
set title 'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2'
set xlabel 'r [Å]'
set ylabel 'g(r)'
set xrange [ 0.000E+00: 0.120E+02]
set yrange [-0.100E+01: 0.140E+02]
set nologscale x
set nologscale y
set label   1 'O-O                          ' at  0.900E+01, 0.120E+01
set style line  1 lt   1 pt   8 ps    0.30
set label   2 'O-Si                         ' at  0.900E+01, 0.420E+01
set style line  2 lt   2 pt   8 ps    0.30
set label   3 'Si-Si                        ' at  0.900E+01, 0.720E+01
set style line  3 lt   3 pt   8 ps    0.30
plot \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.g01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.r01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.g01' u   1:(   1.00000*column(  4)+   3.000) notitle w lines ls   2, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.r01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   3.000:1/0) notitle w p ls   2, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.g01' u   1:(   1.00000*column(  6)+   6.000) notitle w lines ls   3, \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.r01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   6.000:1/0) notitle w p ls   3
