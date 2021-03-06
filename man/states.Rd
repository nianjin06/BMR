\name{states}

\alias{states}
\alias{states.DSGEVAR}
\alias{states.EDSGE}

\title{State Plot.}

\description{
  Plot the filtered state variables of an estimated DSGE model.
}

\usage{
states(obj,percentiles=c(.05,.50,.95),
       varnames=NULL,useMean=FALSE,
       save=FALSE,height=13,width=11)
}

\arguments{
  For objects of class `EDSGE' or `DSGEVAR',
  \item{obj}{
  An object of class `EDSGE' or `DSGEVAR'.}
	\item{percentiles}{
	The percentiles of the distribution the user wants to use.}
  \item{varnames}{
  Name labels for the states.}
	\item{useMean}{
	Whether the user would prefer to use the mean of the forecast distribution rather than the middle value in `percentiles'.}
	\item{save}{
	Whether to save the plots.}
	\item{height}{
	If save=TRUE, use this to set the height of the plot.}
	\item{width}{
	If save=TRUE, use this to set the width of the plot.}
}

\details{
  This function will work with estimated DSGE and DSGEVAR models.
}

\value{
The function returns a plot of the states with user-selected percentiles, as well as the values used to create the plot; see the vignette for more details on the values returned.
}

\author{Keith O'Hara}

\examples{
\dontrun{
NKMest <- EDSGE(dsgedata,chains=1,cores=1,
                ObserveMat,initialvals,partomats,
                priorform,priorpars,parbounds,parnames,
                optimMethod=c("Nelder-Mead","CG"),
                optimLower=NULL,optimUpper=NULL,
                optimControl=list(maxit=10000),
                DSGEIRFs=TRUE,irf.periods=40,
                scalepar=0.27,keep=50000,burnin=75000,
                tables=TRUE)
#
varnames=c("Output Gap","Output","Inflation","Natural Int","Nominal Int","Labour Supply","Technology","MonetaryPolicy")
states(NKMest,percentiles=c(0.01,0.50,0.99),varnames=varnames)
}
}

\keyword{states}
\concept{states}