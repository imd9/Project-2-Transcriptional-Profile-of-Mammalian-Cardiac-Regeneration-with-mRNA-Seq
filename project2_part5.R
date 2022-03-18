# Author: Monica Roberts
# Script for plotting figures from results in Part 4 and 5 of Project 2.

#load libraries
library(ggplot2)
library(dplyr)

# load in data from cufflinks output. This file contains quantified alignments in FPKM (fragments per kilobase of exon per million mapped fragments) for each gene.
FPKM <- read.table('/projectnb/bf528/users/swiss_cheese_2022/project_2/programmer/P0_1_cufflinks/genes.fpkm_tracking', header = TRUE)

#remove FPKM values below 1 and greater than 10,000. FPKM below 1 are removed because they are likely not actually expressed and above 10,000 removes outliers that skew the distribution too much.
FPKM_hist <- FPKM %>% filter(FPKM >= 1 & FPKM < 10000) %>% 
  ggplot(aes(x=FPKM)) + geom_histogram(col='black', fill = 'aquamarine4') + scale_x_log10() + #scale x axis to improve fit of histogram to data
    theme_light() +
  ggtitle('Histogram of FPKM values on log10 scale')

FPKM_hist


