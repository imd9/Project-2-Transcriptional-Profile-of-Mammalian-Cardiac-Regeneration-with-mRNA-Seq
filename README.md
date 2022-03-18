# Project 2: Transcriptional Profile of Mammalian Cardiac Regeneration with mRNA-Seq

  Self-renewal of heart muscle tissue following injury is a phenomena observed in adult vertebrates including zebrafish and newts, however, this process only occurs shortly after birth in mammals. This is because the cardiac myocytes exit the cell cycle early in life and the heart continues to grow through enlargement of the existing cells, rather than continuing to undergo mitosis. It has been shown that neonatal mice who underwent resection of the left ventricular apex were able to regenerate the myocytes and repair the damage. Further genetic studies revealed the regenerated tissue came from existing heart tissue, not stem cells. Identifying the process by which these cells re-enter the cell cycle could provide a means to activate this process in adult cells after injuries such as myocardial infarction. 
	The authors of the study measured gene expression patterns of mouse embryonic cells that were undergoing differentiation to become myocytes in vitro and neonatal cardiac cells that were maturing to adult myocytes in vivo. They then compared these profiles to a transcriptional profile measured from a myocyte explant that exhibited loss of differentiation.
  
Reference: O’Meara, C. C., Wamstad, J. A., Gladstone, R. A., Fomovsky, G. M., Butty, V. L., Shrikumar, A., Gannon, J. B., Boyer, L. A., & Lee, R. T. (2015). Transcriptional Reversion of Cardiac Myocyte Fate During Mammalian Cardiac Regeneration. Circulation Research,116(5),804–815.

# Contributors

Monica Roberts: Programmer (monicapr@bu.edu)

Preshita Dave: Analyst (preshita@bu.edu)

Italo Duran: Data curator (duran01@bu.edu)

# Script Descriptions

run_cuffdiff.qsub: Written by Monica Roberts. Executes cuffdiff tool on accepted_hits.bam to identify differentially expressed genes.

run_cufflinks.qsub: Written by Monica Roberts. Executes cufflinks tool on accepted_hits.bam to count number of reads mapped to annotated genomic regions.

run_tophat.qsub: Written by Monica Roberts. Execute tophat tool to perform alignment of RNA-seq reads to mouse reference genome.

project2_part5.R: Written by Monica Roberts. R script to plot FPKM values produced from cuffdiff.

P0_1/run_bamstat.qsub: Written by Monica Roberts. Executes bamstat.py on accepted_hits.bam.

P0_1/run_geneBody.qsub: Written by Monica Roberts. Executes geneBody_coverage.py on accepted_hits.bam.

P0_1/run_innerdistance.qsub: Written by Monica Roberts. Executes inner_distance.py on accepted_hits.bam.

analyst.r: Written by Preshita Dave. Reproduces fig 1B which compares the postnatal and adult mice.

run_extract.qsub: Written by Italo Duran. Takes sra file and converts it into two fastq files. 

run_qc.qsub: Written by Italo Duran. Takes the two fastq files previously made and converts them to fastqc and creates a report for quality metrics in html format.



