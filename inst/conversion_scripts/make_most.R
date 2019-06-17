# make up most of the data
library(readdst)

# the paths to projects
project_paths <- c("../original/Ducknest_exercise/D702Ducknest exercise",
                   "../original/Systematic_variance_2/D702Systematic_variance_2",
                   "../original/Systematic_variance_1/D702Systematic_variance_1",
                   "../original/PTExercise1/D702Exercise4",
                   "../original/Wren1/D70Wren1",
                   "../original/Wren2/D70Wren2",
                   "../original/Wren3/D70Wren3",
                   "../original/Wren4/D70Wren4",
                   "../original/Savannah_sparrow_1980/D70Savannah\ sparrow\ 1980",
                   "../original/Savannah_sparrow_1981/D70Savannah\ sparrow\ 1981",
                   "../original/Stratify_exercise/D70Stratify\ exercise",
                   "../original/CueCountingExample/D70CueCountingExample",
                   "../original/GolfteesExercise/D70GolfteesExercise",
                   "../original/Dolphin/D70Dolphin",
                   "../original/Cluster_exercise/D70Cluster\ exercise",
                   "../original/fTAMAUK07/D70fTAMAUK07",
                   "../original/Deer_pellets/D70new\ full\ sika")

project_ids <- list(1,
                    "New Analysis",
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    "Cue count Hazard rate No truncation",
                    1,
                    1,
                    1,
                    1,
                    1)

dataname <- c("ducknest",
              "Systematic_variance_2",
              "Systematic_variance_1",
              "PTExercise",
              "wren1",
              "wren2",
              "wren3",
              "wren4",
              "Savannah_sparrow_1980",
              "Savannah_sparrow_1981",
              "Stratify_example",
              "CueCountingExample",
              "golftees",
              "ETP_Dolphin",
              "ClusterExercise",
              "amakihi",
              "sikadeer")



for(i in seq_along(project_ids)){

  cat("Processing", dataname[i], "\n")

  # convert the project
  converted <- convert_project(project_paths[i])

  # grab the data
  dat <- attr(converted, "flatfile")

  # get only the wrens from the wren data
  if(grepl("^wren", dataname[i])){
    dat <- dat[dat$species=="w", ]
    dat$species <- NULL
  }

  assign(dataname[i], dat)

  if(length(converted)>0){
    # get the units for the analysis
    units <- as.list(converted[[project_ids[[i]]]]$env)$units
  }else{
    units <- attr(attr(converted, "flatfile"), "unit_conversion")
  }
  assign(paste0(dataname[i], "_units") , units)

  save(list=c(paste0(dataname[i], "_units"), dataname[i]),
       file=paste0("../../data/", dataname[i], ".RData"))
}
