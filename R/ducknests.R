#' Ducknest line transect survey data
#'
#' Simulated line transect survey of duck nests, designed to reproduce the data of Figure 2 in Anderson and Pospahala (1970).
#'
#' The Monte Vista National Wildlife Refuge is in southern Colorado in the USA at an altitude
#' of roughly 2400m.
#'
#' @name ducknests
#' @docType data
#' @format A data frame with 534 rows and 7 variables
#'   \describe{
#'     \item{Region.Label}{strata names (single stratum in this instance)}
#'     \item{Area}{size of refuge (0 in this case, actual size 60km^2)}
#'     \item{Sample.Label}{transect ID}
#'     \item{Effort}{lenthg of transects (km)}
#'     \item{object}{nest ID}
#'     \item{distance}{perpehdicular distance (m)}
#'     \item{Study.Area}{name of wildlife refuge}
#'   }
#' @references Anderson, D. R., and R. S. Pospahala. 1970. Correction of bias in belt transect studies of immotile objects. The Journal of Wildlife Management 34 (1): 141–146. https://doi.org/10.2307/3799501
#' @source Simulated data, from the distance sampling introductory course, Centre for Research into Ecological & Environmental Modelling, University of St Andrews.
#' @keywords datasets
#' @aliases ducknests_units
NULL
