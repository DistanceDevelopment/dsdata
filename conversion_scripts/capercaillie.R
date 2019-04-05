# capercaillie data

# "perpendicular distance data (m) from line transect surveys of capercaillie (a large grouse) in Scotland. Total line length was 240km. "
# "CAPERCAILLIE, MONAUGHTY FOREST" n =112

capercaillie <- read.table("../original/capercaillie/capercaillie.txt", sep="\t")

names(capercaillie) <- c("Sample.Label", "Effort", "distance")

capercaillie$object <- 1:nrow(capercaillie)
capercaillie$size <- 1
capercaillie$detected <- 1
capercaillie$observer <- 1

save(capercaillie, file="../Rdata/capercaillie.RData")


