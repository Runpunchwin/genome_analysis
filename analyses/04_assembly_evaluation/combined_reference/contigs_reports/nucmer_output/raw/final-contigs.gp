set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "20000000" 20000000, \
 "40000000" 40000000, \
 "60000000" 60000000, \
 "80000000" 80000000, \
 "100000000" 100000000, \
 "" 103878306 \
)
set ytics ( \
 "0" 0, \
 "30000000" 30000000, \
 "60000000" 60000000, \
 "90000000" 90000000, \
 "120000000" 120000000, \
 "150000000" 150000000, \
 "180000000" 180000000, \
 "210000000" 210000000, \
 "" 217947069 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:103878306]
set yrange [1:217947069]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/combined_reference/contigs_reports/nucmer_output/raw/final-contigs.rplot" title "REV" w lp ls 2
