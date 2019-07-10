# make up most of the data
library(readdst)

# the paths to projects
project_paths <- c("../original/Ducknest_exercise/D702Ducknest exercise",
                   "../original/Systematic_variance_2/D702Systematic_variance_2",
                   "../original/Systematic_variance_1/D702Systematic_variance_1",
                   "../original/Exercise3/D702Exercise3",
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
                   "../original/adv_practical_1/adv_practical_1",
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
                    1,
                    "Cue count Hazard rate No truncation",
                    1,
                    1,
                    1,
                    1,
                    1,
                    1)

dataname <- c("ducknest",
              "Systematic_variance_2",
              "Systematic_variance_1",
              "LTExercise",
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
              "unimak",
              "ClusterExercise",
              "amakihi",
              "sikadeer")



for(i in seq_along(project_ids)){
  cat("Processing", dataname[i], "\n")

  # column names that we care about the ordering of
  most_col_order <- c("Region.Label", "Area", "Sample.Label",
                      "Effort", "object", "distance")
  most_col_order_noeff <- c("Region.Label", "Area",
                            "Sample.Label", "object", "distance")

  # convert the project
  converted <- convert_project(project_paths[i])

  # grab the data
  dat <- attr(converted, "flatfile")

  # get only the wrens from the wren data
  if(grepl("^wren", dataname[i])){
    dat <- dat[dat$species=="w", ]
    dat$species <- dat$vists <- dat$visit <- dat$visit.SE <-
      dat$visits <- NULL
    # remove visit labels
    dat$Sample.Label <- sub("-\\d+", "", dat$Sample.Label)
    # multiply up the effort for the line transect
    if(dataname[i]=="wren4"){
      dat$Effort <- dat$Effort*2
    }
  }

  if(grepl("^sikadeer", dataname[i])){
    dat$Sample.Label <- sub("Line ", "", dat$Sample.Label)
    dat$Region.Label <- sub("Block ", "", dat$Region.Label)
    dat$Sample.Label <- paste0(dat$Region.Label, "-",
                                    dat$Sample.Label)
  }


  # fiddly code to get column order right
  if(any(grepl("rate", names(dat)))){
    most_col_order <- c(most_col_order[1:3],
                        names(dat)[grepl("rate", names(dat))],
                        most_col_order[4:length(most_col_order)])
    most_col_order_noeff <- c(most_col_order_noeff[1:3],
                              names(dat)[grepl("rate", names(dat))],
                              most_col_order_noeff[4:length(most_col_order_noeff)])
  }
  if("Effort" %in% names(dat)){
    dat <- dat[, c(most_col_order, setdiff(names(dat), most_col_order))]
  }else{
    dat <- dat[, c(most_col_order_noeff, setdiff(names(dat), most_col_order_noeff))]
  }

  # name the dataset
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
