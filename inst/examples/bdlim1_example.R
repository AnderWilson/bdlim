\donttest{

# run BDLIM with modification by ChildSex
fit_sex <- bdlim1(
  y = sbd_bdlim$bwgaz,
  exposure = sbd_bdlim[,paste0("pm25_",1:37)],
  covars = sbd_bdlim[,c("MomPriorBMI","MomAge","race","Hispanic",
                                   "EstMonthConcept","EstYearConcept")],
  group = as.factor(sbd_bdlim$ChildSex),
  w_free = TRUE,
  b_free = TRUE,
  df = 5,
  nits = 5000
)

# show model fit results
fit_sex

#summarize results
sfit_sex <- summary(fit_sex)
sfit_sex
# graph the estimated distributed lag functions for each group
plot(sfit_sex)


# run BDLIM with no modification
# here a single group is put in for group
# the group must be a factor
# w_free and b_free must be FALSE because modification is not allowed with only one group
fit_onegroup <- bdlim1(
  y = sbd_bdlim$bwgaz,
  exposure = sbd_bdlim[,paste0("pm25_",1:37)],
  covars = sbd_bdlim[,c("MomPriorBMI","MomAge","race","Hispanic",
                        "EstMonthConcept","EstYearConcept")],
  group = as.factor(rep("A",nrow(sbd_bdlim))),
  w_free = FALSE,
  b_free = FALSE,
  df = 5,
  nits = 5000
)

# show model fit results
fit_onegroup

#summarize results
sfit_onegroup <- summary(fit_onegroup)
sfit_onegroup
# graph the estimated distributed lag functions for the one group
plot(sfit_onegroup)

}
