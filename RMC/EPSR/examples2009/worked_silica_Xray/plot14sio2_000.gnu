reset
set title 'C:\EPSR_ESRF\run\SiO2X_1\sio2_000'
set xlabel 'Iteration number'
set ylabel 'U [kJ/mole]'
set xrange [ 0.000E+00: 0.750E+04]
set yrange [-0.400E+04:-0.250E+04]
set nologscale x
set nologscale y
set label   1 ' Block 1                     ' at  0.563E+04, 0.250E+00
set style line  1 lt   1 pt   1 ps 0.3
plot \
'C:\EPSR_ESRF\run\SiO2X_1\sio2_000.EPSR.erg' u   0:(   1.00000*column(  1)+   0.000) notitle w lines ls   1
