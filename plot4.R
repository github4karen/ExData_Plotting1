add2 <- function (x,y) {
  x+y
}

above10 <- function (x) {
  use <- x >10 ## the argument that the value of x is greater than 10
  x[use]
}

above <- function (x,n) {##n is any number where you'd like the cutoff to be
  use <-x>n
  x[use]
}

above10n <- function (x,n=10) {##n is now hard coded in to be 10
  use <-x>n
  x[use]
}

columnmean <-function (y){
  nc <- ncol (y) ## nc is the alias you call it. ncol is the function that gives number of column
  means <-numeric (nc) ##this now is just an empty vector because there's nothing in there yet
  for (i in 1:nc) { ##to loop through all columns
    means [i] <- mean (y[, i])
    
  }
  means ##this is what returns when run function
}
 

columnmean_rm_na <-function (y,removeNA = TRUE){ ##to remove NAs in columns, set removeNA= True, and na.rm=removeNA
  nc <- ncol (y) ## nc is the alias you call it. ncol is the function that gives number of column
  means <-numeric (nc) ##this now is just an empty vector because there's nothing in there yet
  for (i in 1:nc) { ##to loop through all columns
    means [i] <- mean (y[, i], na.rm=removeNA) ##note correction on this line
    
  }
  means ##this is what returns when run function
} 