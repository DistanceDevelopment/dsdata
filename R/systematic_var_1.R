#' Simulation of encounter rate variance 
#'
#' Simulated line transect data with large differences in transect length.
#' In \code{systematic_var_2} that transect length gradient is coupled with a
#' strong animal gradient; exaggerating encounter rate variance between transects.  
#' 
#' True population size is 1000 objects in the study area of size 0.5 km^2; such that 
#' true density is 2000 objects per km.
#' 
#' @references Fewster, R.M., S.T. Buckland, K.P. Burnham, 
#' D.L. Borchers, P.E. Jupp, J.L. Laake and L. Thomas. (2009) Estimating the 
#' encounter rate variance in distance sampling. Biometrics 65 (1): 225–236.
#'  https://doi.org/10.1111/j.1541-0420.2008.01018.x.
#'
#' @name Systematic_variance_1
#' @aliases Systematic_variance_2 Systematic_variance_1_units Systematic_variance_2_units
#' @keywords datasets
#' @docType data
#' @format \code{data.frame} with 253 observations of 7 variables:
#' \tabular{ll}{
#' \code{Region.Label} \tab stratum label (default) \cr
#' \code{Area} \tab stratum area (0.5 km^2) \cr
#' \code{Sample.Label} \tab transect identifier \cr
#' \code{Effort} \tab transect length (km) \cr
#' \code{object} \tab object ID \cr
#' \code{distance} \tab perpendicular distance (m) \cr
#' \code{Study.Area} \tab name of study area
#' }
#' 
#' @note Data structure for \code{systematic_var_2} is identical, but there are 
#' 256 observations and a strong animal gradient.
NULL

