# make up most of the data
library(readdst)

# covered here:
#  - ducknests


# the paths to projects
project_paths <- c("../original/Ducknest_exercise/D702Ducknest exercise",
                   "../original/Systematic_variance_2/D702Systematic_variance_2",
                   "../original/Wren1/D70Wren1",
                   "../original/Wren2/D70Wren2",
                   "../original/Wren3/D70Wren3",
                   "../original/Wren4/D70Wren4",
                   "../original/CueCountingExample/D70CueCountingExample")

project_ids <- list(1,
                    "New Analysis",
                    1,
                    1,
                    1,
                    1,
                    "Cue count Hazard rate No truncation")

dataname <- c("ducknest",
              "Systematic_variance_2",
              "wren1",
              "wren2",
              "wren3",
              "wren4",
              "CueCountingExample")



for(i in seq_along(project_ids)){

  cat("Processing", dataname[i], "\n")

  # convert the project
  converted <- convert_project(project_paths[i])


  # grab the data
  dat_list <- as.list(converted[[project_ids[[i]]]]$env)
  dat <- attr(converted, "flatfile")

  # get the data we want and name it
  assign(paste0(dataname[i], "_units") , dat_list$units)
  assign(dataname[i], dat)

  save(list=c(paste0(dataname[i], "_units"), dataname[i]),
       file=paste0("../../data/", dataname[i], ".RData"))
}
