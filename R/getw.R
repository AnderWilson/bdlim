

#' Get weight function
#'
#' @param object An object of class bdlim1.
#' @param type Type of summary. The default is 'normal' which returns a summary with the mean projected to conform with the norm 1 constraint. Others are `raw` which is the same as normal but without the mean projected and `full` that returns all posterior samples used in the analysis (burn in removed and thinned).
#' @param ... Not used.
#'
#' @returns A data frame with either the summary of the weight function (types normal and raw) or a posterior sample of the weight function (type full).
#' @export

getw <- function(object, type="normal", ...){

iter_keep <- seq(object$nburn+1, object$nits, by=object$nthin)

if(type=="full"){
  # return the full posterior for all samples used (post burn-in and thinned)
  w <- object$w[iter_keep,]
}else if(type %in% c("raw","normal")){
  # summarize distributed lag function
  w <- data.frame(
    group = rep(object$names_groups, each=object$n_times),
    time = rep(1:object$n_times, length(object$names_groups)),
    mean = c(apply(object$w[iter_keep,],2,mean)),
    median = c(apply(object$w[iter_keep,],2,median)),
    sd = c(apply(object$w[iter_keep,],2,sd)),
    q2.5 = c(apply(object$w[iter_keep,],2,quantile,0.025)),
    q97.5 = c(apply(object$w[iter_keep,],2,quantile,0.975)),
    pr_gr0 = c(apply(object$w[iter_keep,]>0,2,mean))
  )
  row.names(w) <- NULL
}else{
  stop("unknown type specified.")
}

if(type=="normal"){
  # normalize the mean to be norm 1.
  for(grp in unique(w$group)){
    w$mean[which(w$group==grp)] <- w$mean[which(w$group==grp)]/sqrt(sum(w$mean[which(w$group==grp)]^2))
  }
}


return(w)

}

