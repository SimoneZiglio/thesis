reset
set title 'C:\EPSR17\run\met\met_9_equilibrated\met'
set xlabel 'Q [1/Å]'
set ylabel 'F(Q)'
set xrange [ 0.000E+00: 0.200E+02]
set yrange [-0.500E+00: 0.900E+00]
set nologscale x
set nologscale y
set label   1 'NIMROD00000045               ' at  0.140E+02, 0.500E+01
set style line  1 lt   1 pt   8 ps    0.30
set label   2 'NIMROD00000045               ' at  0.140E+02, 0.520E+01
set style line  2 lt   2 pt   8 ps    0.30
set label   3 'NIMROD00000045               ' at  0.140E+02, 0.540E+01
set style line  3 lt   3 pt   8 ps    0.30
plot \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.u01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.t01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   0.000:1/0) notitle w p ls   1, \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.u01' u   1:(   1.00000*column(  4)+   0.200) notitle w lines ls   2, \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.t01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   0.200:1/0) notitle w p ls   2, \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.u01' u   1:(   1.00000*column(  6)+   0.400) notitle w lines ls   3, \
'C:\EPSR17\run\met\met_9_equilibrated\met.EPSR.t01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   0.400:1/0) notitle w p ls   3
