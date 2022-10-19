set datafile separator comma
set key autotitle columnhead samplen 2

set terminal png
set output 'kalman-mse-x.png'

set xlabel 'Step'
set logscale y
set ylabel 'MSE (state parameters, log scale)'

set title 'Kalman: Error (state parameters) per step'

plot 'particles/error_x.csv' using 1:3:2:4 every 10 with yerrorbars lt 3 pt 5 title 'PF', \
     'importance/error_x.csv' using 1:3:2:4 every 10 with yerrorbars lt 2 pt 9 title 'IS', \
     'apf_is/error_x.csv' using 1:3:2:4 every 10 with yerrorbars lt 4 pt 7 title 'APF-IS', \
     'apf_mm/error_x.csv' using 1:3:2:4 every 10 with yerrorbars lt 7 pt 15 title 'APF-MM'
