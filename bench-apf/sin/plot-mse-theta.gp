set datafile separator comma
set key autotitle columnhead samplen 2

set terminal pdf
set output 'sin-mse-theta.pdf'

set xlabel 'Pas'
set logscale y
set ylabel 'MSE (paramètres constants, échelle log)'

set title 'Sin : Erreur (paramètres constants) par pas'

plot 'particles/error_theta.csv' using 1:3:2:4 every 10 with yerrorlines lt 3 pt 5 title 'PF', \
     'importance/error_theta.csv' using 1:3:2:4 every 10 with yerrorlines lt 2 pt 9 title 'IS', \
     'apf_is/error_theta.csv' using 1:3:2:4 every 10 with yerrorlines lt 4 pt 7 title 'APF-IS', \
     'apf_mm/error_theta.csv' using 1:3:2:4 every 10 with yerrorlines lt 7 pt 15 title 'APF-MM'
