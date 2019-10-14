#' Steve Buckland's winter wren surveys
#'
#' Observations of winter wren (Troglodytes troglodytes L.) collected by Steve Buckland in woodland/parkland at Montrave Estate near Leven, Fife, Scotland.
#'
#' Four different surveys were carried out:
#' \describe{
#'   \item{\code{wren_5min}}{5-minute point count}
#'   \item{\code{wren_snapshot}}{snapshot method}
#'   \item{\code{wren_cuecount}}{cue count}
#'   \item{\code{wren_lt}}{line transect survey}
#' }
#'
#' @name wren
#' @docType data
#' @references Buckland, S. T. (2006) Point-transect surveys for songbirds: robust methodologies. The Auk 123 (2): 345–357.
#' @source Steve Buckland
#' @keywords datasets
#' @aliases wren_5min wren_snapshot wren_cuecount wren_lt wren_5min_units wren_snapshot_units wren_cuecount_units wren_lt_units
#' @note wren_5min is  data frame with 134 observations of 8 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab stratum name (single stratum) \cr
#'     \code{Area} \tab size (ha) of Montrave study area \cr
#'     \code{Sample.Label} \tab point label \cr
#'     \code{Effort} \tab Number of visits to point \cr
#'     \code{object} \tab Object ID \cr
#'     \code{distance} \tab radial distance (m) \cr
#'     \code{direction} \tab direction of detection from point \cr
#'     \code{Study.Area} \tab Montrave Estate \cr
#'   }
#' @note wren_snapshot is  data frame with 119 observations of 7 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab stratum name (single stratum) \cr
#'     \code{Area} \tab size (ha) of Montrave study area \cr
#'     \code{Sample.Label} \tab point label \cr
#'     \code{Effort} \tab Number of visits to point \cr
#'     \code{object} \tab Object ID \cr
#'     \code{distance} \tab radial distance (m) \cr
#'     \code{Study.Area} \tab Montrave Estate \cr
#'   }
#' @note wren_cuecount is  data frame with 774 observations of 9 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab stratum name (single stratum) \cr
#'     \code{Area} \tab size (ha) of Montrave study area \cr
#'     \code{Sample.Label} \tab point label \cr
#'     \code{Cue.rate} \tab Production rate (per min) of cues \cr
#'     \code{Cue.rate.SE} \tab  SE of cue production rate \cr
#'     \code{object} \tab Object ID \cr
#'     \code{distance} \tab radial distance (m) \cr
#'     \code{Search.time} \tab Time (min) listening for cues \cr
#'     \code{Study.Area} \tab Montrave Estate \cr
#'   }
#' @note wren_lt is  data frame with 156 observations of 8 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab stratum name (single stratum) \cr
#'     \code{Area} \tab size (ha) of Montrave study area \cr
#'     \code{Sample.Label} \tab transect label \cr
#'     \code{Effort} \tab  transect length (km) \cr
#'     \code{object} \tab Object ID \cr
#'     \code{distance} \tab perpendicular distance (m) \cr
#'     \code{Study.Area} \tab Montrave Estate \cr
#'   }
NULL
