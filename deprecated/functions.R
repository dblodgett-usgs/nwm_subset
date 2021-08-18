findVarByAtt <- function(nc, attribute, value = "*", strict = TRUE) {
  foundVar<-list()
  for(variable in c(names(nc$var), names(nc$dim))) {
    temp<-try(ncatt_get(nc,variable,attribute))
    if(strict) value<-paste0("^",value,"$")
    if(!is.null(temp$hasatt) && temp$hasatt && grepl(value,temp$value)) {
      foundVar<-append(foundVar,variable)
    }
  }
  return(foundVar)
}