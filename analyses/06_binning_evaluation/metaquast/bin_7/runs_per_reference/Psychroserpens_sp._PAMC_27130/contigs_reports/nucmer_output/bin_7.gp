set terminal canvas jsdir ""
set output "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_7/runs_per_reference/Psychroserpens_sp._PAMC_27130/contigs_reports/nucmer_output/bin_7.html"
set xtics rotate ( \
 "0" 0, \
 "500000" 500000, \
 "1000000" 1000000, \
 "1500000" 1500000, \
 "2000000" 2000000, \
 "2500000" 2500000, \
 "3000000" 3000000, \
 "3500000" 3500000, \
 "" 3633537 \
)
set ytics ( \
 "0" 0, \
 "4000" 4000, \
 "8000" 8000, \
 "12000" 12000, \
 "16000" 16000, \
 "20000" 20000, \
 "24000" 24000, \
 "28000" 28000, \
 "" 29461 \
)
set size 1,1
set grid
set key outside bottom right
set border 0
set tics scale 0
set xlabel "Reference" noenhanced
set ylabel "Assembly" noenhanced
set format "%.0f"
set xrange [1:3633537]
set yrange [1:29461]
set linestyle 1  lt 1 lc rgb "red" lw 3 pt 7 ps 0.5
set linestyle 2  lt 3 lc rgb "blue" lw 3 pt 7 ps 0.5
set linestyle 3  lt 2 lc rgb "yellow" lw 3 pt 7 ps 0.5
plot \
 "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_7/runs_per_reference/Psychroserpens_sp._PAMC_27130/contigs_reports/nucmer_output/bin_7.fplot" title "FWD" w lp ls 1, \
 "/home/frle5739/genome_analysis/analyses/06_binning_evaluation/metaquast/bin_7/runs_per_reference/Psychroserpens_sp._PAMC_27130/contigs_reports/nucmer_output/bin_7.rplot" title "REV" w lp ls 2
