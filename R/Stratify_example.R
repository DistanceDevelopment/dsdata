#' Simulated minke whale data 
#'
#' Data simulated from models fitted to 1992/1993 Southern Hemisphere minke whale data collected by the International Whaling Commission. See Branch and Butterworth (2001) for survey details (survey design is shown in figure 1(e)). Data simulated by David Borchers.
#'
#' @references Branch, T.A. and D.S. Butterworth. (2001) Southern Hemisphere minke whales: standardised abundance estimates from the 1978/79 to 1997/98 IDCR-SOWER surveys. Journal of Cetacean Research and Management 3(2): 143-174
#'
#' Hedley, S.L., and S.T. Buckland. (2004) Spatial models for line transect sampling. Journal of Agricultural, Biological, and Environmental Statistics 9: 181-199. doi:10.1198/1085711043578.
#'
#' @name Stratify_example
#' @aliases Stratify_example_units
#' @keywords datasets
#' @docType data
#' @format \code{data.frame} with 99 observations of 7 variables:
#' \tabular{ll}{
#' \code{Region.Label} \tab stratum label (\code{"North"} or \code{"South"}) \cr
#' \code{Area} \tab stratum area  (square nautical mile)\cr
#' \code{Sample.Label} \tab transect identifier\cr
#' \code{Effort} \tab transect length  (nautical mile)\cr
#' \code{object} \tab object ID \cr
#' \code{distance} \tab observed distance (nautical mile)\cr
#' \code{Study.Area} \tab {name of study area}}
NULL

