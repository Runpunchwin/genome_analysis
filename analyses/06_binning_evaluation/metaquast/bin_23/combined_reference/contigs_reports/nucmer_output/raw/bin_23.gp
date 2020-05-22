set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_23/combined_reference/contigs_reports/nucmer_output/raw/bin_23.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "4000000" 4000000, \
 "" 4282232 \
)
set ytics ( \
 "0" 0, \
 "400000" 400000, \
 "800000" 800000, \
 "1200000" 1200000, \
 "1600000" 1600000, \
 "2000000" 2000000, \
 "2400000" 2400000, \
 "2800000" 2800000, \
 "" 3188556 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:4282232]
set yrange [1:3188556]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_23/combined_reference/contigs_reports/nucmer_output/raw/bin_23.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_23/combined_reference/contigs_reports/nucmer_output/raw/bin_23.rplot" title "REV" w lp ls 2
