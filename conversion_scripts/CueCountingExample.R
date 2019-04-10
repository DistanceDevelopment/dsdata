# Cue counting example

library(readdst)

converted <- convert_project("../original/CueCountingExample/D70CueCountingExample")

dat_list <- as.list(converted[["Cue count Hazard rate No truncation"]]$env)

convert.units <- dat_list$units
data <- dat_list$data
obs.table <- dat_list$obs.table
sample.table <- dat_list$sample.table
region.table <- dat_list$region.table

save(convert.units, data, obs.table, sample.table, region.table, file="../Rdata/CueCountingExample.RData")
