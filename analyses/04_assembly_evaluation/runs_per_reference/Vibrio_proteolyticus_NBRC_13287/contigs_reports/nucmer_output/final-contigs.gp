set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Vibrio_proteolyticus_NBRC_13287/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "600000" 600000, \
 "1200000" 1200000, \
 "1800000" 1800000, \
 "2400000" 2400000, \
 "3000000" 3000000, \
 "3600000" 3600000, \
 "4200000" 4200000, \
 "" 4745539 \
)
set ytics ( \
 "0" 0, \
 "7000" 7000, \
 "14000" 14000, \
 "21000" 21000, \
 "28000" 28000, \
 "35000" 35000, \
 "42000" 42000, \
 "49000" 49000, \
 "56000" 56000, \
 "" 62064 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4745539]
set yrange [1:62064]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Vibrio_proteolyticus_NBRC_13287/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Vibrio_proteolyticus_NBRC_13287/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
