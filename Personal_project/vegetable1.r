library("vegan")

library("devtools")
install_github("joey711/phyloseq")

if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("phyloseq")
library("phyloseq")
