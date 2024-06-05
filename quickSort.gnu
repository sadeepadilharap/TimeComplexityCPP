set term png size 1280,720
set output 'sorting_algorithms.png'

# Set the background color to black
set object 1 rectangle from screen 0,0 to screen 1,1 behind fillcolor rgb "black" fillstyle solid noborder

# Set text color to white
set key textcolor rgb "white"
set xlabel "Number of Elements in Array" textcolor rgb "white"
set ylabel "Time (nanoseconds)" textcolor rgb "white"
set title "Sorting Algorithms Performance" textcolor rgb "white"

# Set axis color to white
set style line 11 lc rgb '#ffffff' lt 1
set border 3 front linetype 11
set tics nomirror

# Set line colors
set style line 1 lc rgb '#ffff00' lt 1 lw 2
set style line 2 lc rgb '#add8e6' lt 1 lw 2

plot \
  'data.txt' using 1:6 with lines ls 1 title 'Quick Sort', \
  '' using 1:7 with lines ls 2 title 'Quick Sort (Iterative)'
