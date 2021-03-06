#' Hawaiian amakihi point transect data
#'
#' Also known as the Common 'Amakihi, a type of Hawaiian honeycreeper 
#'
#' @name amakihi
#' @aliases amakihi_units
#' @docType data
#' @format A data frame with 1487 rows and 12 variables
#'   \tabular{ll}{
#'     \code{Region.Label} \tab strata names (seven strata) \cr
#'     \code{Area} \tab size of study area (set to 0) \cr
#'     \code{Sample.Label} \tab transect ID \cr
#'     \code{Effort} \tab number of visits to point \cr
#'     \code{object} \tab object ID  \cr
#'     \code{distance} \tab radial distance (m) \cr
#'     \code{Month} \tab month survey conducted (not used) \cr
#'     \code{OBs} \tab observer ID (note capitalisation of variable name) \cr
#'     \code{Sp} \tab species code (COAM) for all detections \cr
#'     \code{MAS} \tab Time after sunrise (min) \cr
#'     \code{HAS} \tab Time after sunrise (hours) \cr
#'     \code{Study.Area} \tab name of study area \cr
#'   }
#' @note Example for investigating covariates in the detection function.  Note high 
#' colinearity between two measures of time since sunrise.  Convergence problems can
#' result from models with several factor covariates.
#' @references Marques, T.A., L. Thomas, S.G. Fancy and S.T. Buckland. (2007)
#'  Improving estimates of bird density using multiple-covariate distance sampling. 
#'  The Auk 124 (4): 1229–1243. 
#'  https://doi.org/10.1642/0004-8038(2007)124[1229:IEOBDU]2.0.CO;2. 
#' @keywords datasets
NULL
