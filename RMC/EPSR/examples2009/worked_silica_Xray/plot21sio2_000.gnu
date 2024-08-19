reset
set title 'C:\EPSR_ESRF\run\sio2x_1\sio2_000'
set xlabel 'r [A]'
set ylabel 'g(r) and N(r)'
set xrange [ 0.000E+00: 0.600E+01]
set yrange [ 0.000E+00: 0.900E+01]
set nologscale x
set nologscale y
set label   1 'Si-Si                        ' at  0.450E+01, 0.120E+01
set style line  1 lt   1 pt   1 ps 0.3
set label   2 'Si-O                         ' at  0.450E+01, 0.220E+01
set style line  2 lt   2 pt   2 ps 0.3
set label   3 'O-O                          ' at  0.450E+01, 0.320E+01
set style line  3 lt   3 pt   3 ps 0.3
plot \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.g01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.z01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.g01' u   1:(   1.00000*column(  4)+   1.000) notitle w lines ls   2, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.z01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   1.000:1/0) notitle w p ls   2, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.g01' u   1:(   1.00000*column(  6)+   2.000) notitle w lines ls   3, \
'C:\EPSR_ESRF\run\sio2x_1\sio2_000.EPSR.z01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   2.000:1/0) notitle w p ls   3
