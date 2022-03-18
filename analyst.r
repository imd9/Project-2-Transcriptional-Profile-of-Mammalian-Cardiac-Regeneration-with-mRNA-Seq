# Analyst: Preshita

# Description of code: This script reproduces fig 1B which compares the postnatal and adult mice. 

#set working directory
setwd('/projectnb/bf528/users/swiss_cheese_2022/project_2/analyst')

#loading in the data 
data <- read.table('/projectnb/bf528/users/swiss_cheese_2022/project_2/programmer/cuffdiff_out/gene_exp.diff',header = TRUE)

#ordering by q-value in ascending order
data <- data[order(data$q_value),]

top_10_deg <-data[1:10, c('gene', 'value_1', 'value_2', 'log2.fold_change.', 'p_value', 'q_value')]
write.csv(top_10_deg, "top_10_deg.csv")

# Histogram of log2FC of all genes
hist(data$log2.fold_change., breaks=20, main='Histogram of Log2FoldChange of all genes', xlab = "Log2FoldChange Value")

# Subsetting the dataframe that contains significant genes
data.sub <- subset(data,significant=='yes')

# Histogram of log2FC of significant genes
hist(data.sub$log2.fold_change., breaks=20, main='Histogram of Log2FoldChange of significant genes', xlab = "Log2FoldChange Value")

# the difference between the first and the second histogram is that in the second histogram, you don't observe any Log2FC values in range of [-0.5,0.5].

#DEGs having p <0.01 
pdegs <- subset(data.sub, p_value <0.01)

# Creating subset of up and down regulated genes
up_deg <- subset(pdegs,log2.fold_change.>0)
down_deg <- subset(pdegs,log2.fold_change.<0)

#number of upregulated genes
cat("Number of upregulated genes:",nrow(up_deg))

#number of downregulated genes
cat("Number of downregulated genes:",nrow(down_deg))

# writing out the genes names of up and down regulated genes
write.csv(up_deg$gene, file = 'upregulated_genes.csv', row.names = FALSE, quote = FALSE)
write.csv(down_deg$gene, file = 'downregulated_genes.csv', row.names = FALSE, quote = FALSE)
