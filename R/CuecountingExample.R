#' Cue counts of whale blows
#'
#' Cues are treated as an indirect count, requiring the use of multipliers.
#'
#' Because whale blows disappear instantaneously, there is no need to measure a decay rate.
#' However a cue production rate (blows per individual per unit time) is required,
#' as is a measure of variability of that rate.
#'
#' @name CueCountingExample
#' @aliases CueCountingExample_units
#' @docType data
#' @format A data frame with 109 rows and 15 variables.
#'   \tabular{ll}{ 
#'     \code{Region.Label} \tab stratum labels \cr
#'     \code{Area} \tab size (km^2) of each stratum \cr
#'     \code{Sample.Label} \tab transect labels \cr
#'     \code{Cue.rate} \tab rate of blows per animal per hour \cr
#'     \code{Cue.rate.SE} \tab variability in cue rate \cr
#'     \code{Cue.rate.df} \tab degrees of freedom (number of animals sampled for cues) \cr
#'     \code{object} \tab object ID \cr
#'     \code{distance} \tab perpendicular distance (km) \cr
#'     \code{Sample.Fraction} \tab proportion of full circle scanned (radians) \cr
#'     \code{Sample.Fraction.SE} \tab variability in sampling fraction (0) \cr
#'     \code{Search.time} \tab Duration of scanning effort (hr) \cr
#'     \code{bss} \tab Beaufort sea state \cr
#'     \code{sp} \tab Species detected (all observations W in these data) \cr
#'     \code{size} \tab Number of animals in group (all 1 in these data) \cr
#'     \code{Study.Area} \tab study area name \cr
#'   }
#' @note  There are two other nuances in this survey.  Even though the survey is taking place
#' on a moving ship, effort is measured as amount of time scanning for blows.  In some instances,
#' it is not possible for the observer to scan the sea all around them as view may be restricted
#' by the ship's superstructure.  Here a \code{sampling fraction} multiplier is employed 
#' to deal with restricted vision.  Units of measure of \code{cue.rate} and \code{Search.time}
#' must be equal.
#' @keywords datasets
NULL
