set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Luminiphilus_syltensis_NOR5-1B/contigs_reports/nucmer_output/final-contigs.html"
set ytics ( \
 "0" 0, \
 "9000" 9000, \
 "18000" 18000, \
 "27000" 27000, \
 "36000" 36000, \
 "45000" 45000, \
 "54000" 54000, \
 "63000" 63000, \
 "72000" 72000, \
 "" 78036 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:*]
set yrange [1:78036]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Luminiphilus_syltensis_NOR5-1B/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Luminiphilus_syltensis_NOR5-1B/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
