#' Simulated line transect survey data with covariates
#'
#' Simulated line transect survey. Only eight line transects, detection function is 
#' half-normal. 
#'
#' @name unimak
#' @aliases unimak_units
#' @docType data
#' @format A data frame with 60 rows and 9 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab strata names (single stratum) \cr
#'     \code{Area} \tab size of study area (mi^2) \cr
#'     \code{Sample.Label} \tab transect ID \cr
#'     \code{Effort} \tab transect length (mi) \cr
#'     \code{object} \tab object ID  \cr
#'     \code{distance} \tab perpendicular distance (km) \cr
#'     \code{MSTDO} \tab time since medication taken by observer (min) \cr
#'     \code{Hour} \tab time of day of sighting (hour) \cr
#'     \code{Study.Area} \tab name of study area \cr
#'   }
#' @note \code{Hour} is covariate that has no effect on detection function, while 
#' \code{MSTDO} does affect the detection function.  Examine the ability of model 
#' selection to choose the correct model.
#' @source Simulated data, from the distance sampling introductory course, Centre for
#'  Research into Ecological & Environmental Modelling, University of St Andrews.
#' @keywords datasets
NULL
