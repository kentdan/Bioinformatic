install.packages("ape")
library("ape")
getwd()
aln <- read.FASTA("/Users/danielkent/Desktop/Bioinformatics/data_M2_molecular_evolution/SARS_CoV_2_alignment.aln")
str(aln)
data_dist <- dist.dna(aln)
data_dist
tree_upgma <- as.phylo(hclust(data_dist, method="average"))
plot(tree_upgma)
write.tree(tree_upgma, file="tree_upgma.nexus")

tree_nj <- nj(data_dist) # Basic NJ
tree_bionj <- bionj(data_dist) # Improved NJ method

write.tree(tree_bionj, file="tree_bionj.nexus") # save
