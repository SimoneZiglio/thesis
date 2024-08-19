reset
set title 'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2'
set xlabel 'Iteration number'
set ylabel 'U [kJ/mole]'
set xrange [ 0.000E+00: 0.200E+04]
set yrange [-0.400E+04: 0.400E+04]
set nologscale x
set nologscale y
set label   1 ' Block 1                     ' at  0.150E+04, 0.250E+00
set style line  1 lt   1 pt   8 ps    0.30
plot \
'C:\EPSR\examples_rh\silica_with_silvia\silica_4_refinement\sio2.EPSR.erg' u   0:(   1.00000*column(  1)+   0.000) notitle w lines ls   1
