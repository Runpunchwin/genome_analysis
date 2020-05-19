set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Shewanella_amazonensis_SB2B/contigs_reports/nucmer_output/final-contigs.html"
set ytics ( \
 "0" 0, \
 "900" 900, \
 "1800" 1800, \
 "2700" 2700, \
 "3600" 3600, \
 "4500" 4500, \
 "5400" 5400, \
 "6300" 6300, \
 "7200" 7200, \
 "" 7229 \
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
set yrange [1:7229]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Shewanella_amazonensis_SB2B/contigs_reports/nucmer_output/final-contigs.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/04_assembly_evaluation/runs_per_reference/Shewanella_amazonensis_SB2B/contigs_reports/nucmer_output/final-contigs.rplot" title "REV" w lp ls 2
