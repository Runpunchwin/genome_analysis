set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Psychrobacter_sp._PRwf-1/contigs_reports/nucmer_output/final-contigs.html"
set xtics rotate ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "" 2995049 \
)
set ytics ( \
 "0" 0, \
 "20000" 20000, \
 "40000" 40000, \
 "60000" 60000, \
 "80000" 80000, \
 "100000" 100000, \
 "120000" 120000, \
 "" 131501 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:2995049]
set yrange [1:131501]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Psychrobacter_sp._PRwf-1/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Psychrobacter_sp._PRwf-1/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
