% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_fun.R
\name{edm1_normal_gen}
\alias{edm1_normal_gen}
\title{edm1_normal_gen}
\usage{
edm1_normal_gen(
  mean_inpt,
  sd_inpt,
  n_inpt,
  offset_proba = 1e-05,
  cur_step = "auto",
  accuracy_factor = 10
)
}
\arguments{
\item{mean_inpt}{is the mean of the normal distribution}

\item{sd_inpt}{is the standard deviation of the normal distribution}

\item{n_inpt}{is the number of values you want to generate}

\item{offset_proba}{is the value with the least probability to be included in the normal distribution}
}
\description{
Reimplementation of \code{rnorm} function. The only difference is that outputed values are already sorted thanks to the algorithm used. You can also choose the most unlikely value to include in the outputed normal distribution. See examples. Warning, the lower \code{sd_inpt} is, the lower \code{cur_step} should be.
}
\examples{


x <- edm1_normal_gen(mean_inpt = 100,
                    sd_inpt = 15,
                    n_inpt = 15000,
                    offset_proba = 0.00001,
                    cur_step = 0.3,
                    accuracy_factor = 10)

sd(x)

[1] 15.0456

summary(x)

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  43.13   89.93  100.43  100.30  110.33  159.53 

x <- edm1_normal_gen(mean_inpt = 100,
                    sd_inpt = 165,
                    n_inpt = 15000,
                    offset_proba = 0.00001,
                    cur_step = 0.3,
                    accuracy_factor = 10)

sd(x)

[1] 164.1441
summary(x)

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-444.55  -11.65   99.65   98.81  209.15  635.75 

x <- edm1_normal_gen(mean_inpt = 100,
                    sd_inpt = 0.45,
                    n_inpt = 15000,
                    offset_proba = 0.00001,
                    cur_step = 0.05,
                    accuracy_factor = 10)

sd(x)

0.4504586

summary(x)

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  98.25   99.70  100.00   99.99  100.30  101.55 

}
