# capercaillie data

# "perpendicular distance data (m) from line transect surveys of capercaillie (a large grouse) in Scotland. Total line length was 240km. "
# "CAPERCAILLIE, MONAUGHTY FOREST" n =112

capercaillie <- read.table("../original/capercaillie/capercaillie.txt", sep="\t")

names(capercaillie) <- c("Sample.Label", "Effort", "distance")

capercaillie$object <- 1:nrow(capercaillie)
capercaillie$size <- 1
capercaillie$detected <- 1
capercaillie$observer <- 1

# add in area and region name
# ER notes the area of the forest is 1472 hectares from google.
capercaillie$Region.Label <- "Monaughty Forest"
capercaillie$Area <- 1472

# add units
capercaillie_units <- data.frame(Variable   =c("Area", "Effort", "distance"),
                                 Units      =c("hectare", "kilometer", "meter"),
                                 Conversion =c(10000, 1000, 1))


save(capercaillie, capercaillie_units, file="../../data/capercaillie.RData")


