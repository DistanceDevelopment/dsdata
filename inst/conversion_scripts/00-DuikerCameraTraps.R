# Duiker camera trap data


DuikerCameraTraps <- read.delim("../original/DuikerCameraTraps/PeakDistances.txt")
DuikerCameraTraps$Area <- DuikerCameraTraps$Area / 1e+06 # sq m to sq km
col.order <- c("Region.Label", "Area", "multiplier", "Sample.Label", "Effort", "distance")
DuikerCameraTraps <- DuikerCameraTraps[, col.order]


# add units
DuikerCameraTraps_units <- data.frame(Variable=c("Area", "distance"),
                                      Units=c("square kilometer", "meter"),
                                      Conversion =c(1e6, 1))


save(DuikerCameraTraps_units, DuikerCameraTraps,
     file="../../data/DuikerCameraTraps.RData", version=2)
