# Ducknests

library(readdst)

converted <- convert_project("../original/Ducknest_exercise/D702Ducknest exercise")

dat_list <- as.list(converted[[1]]$env)

convert.units <- dat_list$units
data <- dat_list$data
obs.table <- dat_list$obs.table
sample.table <- dat_list$sample.table
region.table <- dat_list$region.table

save(convert.units, data, obs.table, sample.table, region.table, file="../../data/ducknest.RData")
