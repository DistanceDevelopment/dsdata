# capercaillie data

# "perpendicular distance data (m) from line transect surveys of capercaillie (a large grouse) in Scotland. Total line length was 240km. "
# "CAPERCAILLIE, MONAUGHTY FOREST" n =112

capercaillie <- read.table("../original/capercaillie.txt", sep="\t")

names(capercaillie) <- c("Sample.Label", "Effort", "distance")

save(capercaillie, file="../Rdata/capercaillie.RData")


