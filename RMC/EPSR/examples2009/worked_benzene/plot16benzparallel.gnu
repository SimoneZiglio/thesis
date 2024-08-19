reset
set title '/home/aks45/EPSR17/run/benzene/benzparallel'
set xlabel 'r [Å]'
set ylabel 'h(r)'
set xrange [ 0.000E+00: 0.100E+02]
set yrange [-0.100E+01: 0.200E+02]
set nologscale x
set nologscale y
set label   1 '(0,0,0;0,0)                  ' at  0.750E+01, 0.500E+00
set style line  1 lt   1 pt   6 ps    2.00
set label   2 '(2,0,2;0,0)                  ' at  0.750E+01, 0.250E+01
set style line  2 lt   2 pt   6 ps    2.00
set label   3 '(2,0,2;2,0)                  ' at  0.750E+01, 0.450E+01
set style line  3 lt   3 pt   6 ps    2.00
set label   4 '(4,0,4;0,0)                  ' at  0.750E+01, 0.650E+01
set style line  4 lt   4 pt   6 ps    2.00
set label   5 '(4,0,4;2,0)                  ' at  0.750E+01, 0.850E+01
set style line  5 lt   5 pt   6 ps    2.00
set label   6 '(4,0,4;4,0)                  ' at  0.750E+01, 0.105E+02
set style line  6 lt   6 pt   6 ps    2.00
set label   7 '(6,0,6;0,0)                  ' at  0.750E+01, 0.125E+02
set style line  7 lt   7 pt   6 ps    2.00
set label   8 '(6,0,6;2,0)                  ' at  0.750E+01, 0.145E+02
set style line  8 lt   8 pt   6 ps    2.00
set label   9 '(6,0,6;4,0)                  ' at  0.750E+01, 0.165E+02
set style line  9 lt   9 pt   6 ps    2.00
set label  10 '(6,0,6;6,0)                  ' at  0.750E+01, 0.185E+02
set style line 10 lt  10 pt   6 ps    2.00
plot \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column(  2)+   0.000) notitle w lines ls   1, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column(  4)+   2.000) notitle w lines ls   2, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column(  6)+   4.000) notitle w lines ls   3, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column(  8)+   6.000) notitle w lines ls   4, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 10)+   8.000) notitle w lines ls   5, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 12)+  10.000) notitle w lines ls   6, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 14)+  12.000) notitle w lines ls   7, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 16)+  14.000) notitle w lines ls   8, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 18)+  16.000) notitle w lines ls   9, \
'/home/aks45/EPSR17/run/benzene/benzparallel.SHARM.h01' u   1:(   1.00000*column( 20)+  18.000) notitle w lines ls  10
