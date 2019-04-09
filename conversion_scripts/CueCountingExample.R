# Cue counting example

# this should work but doesn't!
#library(readdst)
devtools::load_all("~/current/readdst")

#converted <- convert_project("../original/CueCountingExample/D70CueCountingExample")
#
#dat_list <- as.list(converted[["New Analysis"]]$env)
#
#
#convert.units <- dat_list$units
#data <- dat_list$data
#obs.table <- dat_list$obs.table
#sample.table <- dat_list$sample.table
#region.table <- dat_list$region.table

# datadump from debug session
load("badcue.RData")

# function to rename columns
relabel <- function(old_name, new_name, data){
  if(old_name %in% names(data)){
    data[[new_name]] <- data[[old_name]]
    data[[old_name]] <- NULL
  }
  return(data)
}

#aargghhhhhh
cue <- relabel("Search.time", "Effort", cue)
cue <- relabel("ID", "object", cue)
cue <- relabel("Label.10", "Region.Label", cue)
cue <- relabel("ID.20", "Sample.Label", cue)
cue$ID.last <- cue$ID.10 <- cue$ID.1 <- cue$Label.1 <- NULL

dat_list <- readdst::unflatfile(cue)
convert.units <- list()
data <- dat_list$data
obs.table <- dat_list$obs.table
sample.table <- dat_list$sample.table
region.table <- dat_list$region.table

save(convert.units, data, obs.table, sample.table, region.table, file="../Rdata/CueCountingExample.RData")
