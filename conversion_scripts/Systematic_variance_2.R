# Systematic variance 2

library(readdst)

converted <- convert_project("../original/Systematic_variance_2/D702Systematic_variance_2")

dat_list <- as.list(converted[["New Analysis"]]$env)


units <- dat_list$units
data <- dat_list$data
obs.table <- dat_list$obs.table
sample.table <- dat_list$sample.table
region.table <- dat_list$region.table

save(units, data, obs.table, sample.table, region.table, file="../Rdata/Systematic_variance_2.RData")
