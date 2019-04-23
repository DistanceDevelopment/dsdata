# Wren 3 -- cue count

# Montrave data, presumably collected by Steve Buckland

# NB this project has no analyses

library(readdst)

dat_list <- convert_project("../original/Wren3/D70Wren3")[[1]]

convert.units <- dat_list$units
data <- dat_list$data
obs.table <- dat_list$obs.table
sample.table <- dat_list$sample.table
region.table <- dat_list$region.table

save(convert.units, data, obs.table, sample.table, region.table, file="../../data/Wren3.RData")

