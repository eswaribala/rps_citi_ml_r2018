#creating s3 class
s <- list(name = "Jaya", age = 21, GPA = 3.5)
# name the class appropriately
class(s) <- "student"
# That's it! we now have an object of class "student"
s$name
#a constructor function for the "student" class

student <- function(n,a,g) {
  # we can add our own integrity checks
  if(g>4 || g<0)  stop("GPA must be between 0 and 4")
  value <- list(name = n, age = a, GPA = g)
  # class can be set using class() or attr() function
  attr(value, "class") <- "student"
  value
}
#default print called by obj
print.student <- function(obj) {
  cat(obj$name, "\t")
  cat(obj$age, "years old\t")
  cat("GPA:", obj$GPA, "\n")
}
obj <- student("Pragnya", 26, 3.7)
obj

