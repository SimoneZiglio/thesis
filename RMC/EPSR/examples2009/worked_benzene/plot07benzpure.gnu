reset
set title '/home/aks45/EPSR17/run/benzene/benzpure'
set xlabel 'Q [1/Å]'
set ylabel 'F(Q)'
set xrange [ 0.000E+00: 0.300E+02]
set yrange [-0.330E+00: 0.260E+01]
set nologscale x
set nologscale y
set label   1 'SLS10535                     ' at  0.225E+02, 0.500E-01
set style line  1 lt   1 pt   6 ps    2.00
set label   2 'SLS10534                     ' at  0.225E+02, 0.105E+01
set style line  2 lt   2 pt   6 ps    2.00
set label   3 'SLS10533                     ' at  0.225E+02, 0.205E+01
set style line  3 lt   3 pt   6 ps    2.00
plot \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.u01' u   1:(   1.00000*column(  6)+   0.000) notitle w lines ls   1, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.t01' u   1:(abs(column(  6))>=1.0e-5?   1.00000*column(  6)+   0.000:1/0) notitle w p ls   1, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.u01' u   1:(   1.00000*column(  4)+   1.000) notitle w lines ls   2, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.t01' u   1:(abs(column(  4))>=1.0e-5?   1.00000*column(  4)+   1.000:1/0) notitle w p ls   2, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.u01' u   1:(   1.00000*column(  2)+   2.000) notitle w lines ls   3, \
'/home/aks45/EPSR17/run/benzene/benzpure.EPSR.t01' u   1:(abs(column(  2))>=1.0e-5?   1.00000*column(  2)+   2.000:1/0) notitle w p ls   3
