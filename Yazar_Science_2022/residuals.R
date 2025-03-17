
# March 17, 2025

library(SingleCellExperiment)
library(dreamlet)

pb = readRDS("/sc/arion/scratch/hoffmg01/Yazar_2022_pseudobulk.RDS")

res.proc = processAssays(pb, ~ 1, min.count=2, min.prop=.2)

fit <- dreamlet(res.proc, ~ 1)

residPearson.lst <- residuals(fit, res.proc, type = "pearson")

file = "/sc/arion/scratch/hoffmg01/Yazar_2022_residuals.RDS"
saveRDS(residPearson.lst, file=file)

# List of cell types
# Each entry has genes on rows and samples as columns
file = "/sc/arion/scratch/hoffmg01/Yazar_2022_residuals.RDS"
resids = readRDS(file)

resids[['plasmablast']][1:3, 1:3]

t(sapply(resids, dim))







