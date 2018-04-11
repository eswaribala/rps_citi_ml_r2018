Person1 <- setRefClass("Person",fields = list(name = "character", age = "numeric", GPA = "numeric"), methods = list(
  inc_age = function(x) {
    age <<- age + x
  },
  dec_age = function(x) {
    age <<- age - x
  }
))
obj <- Person1(name = "John", age = 21, GPA = 3.5)
obj$inc_age(5)
obj$age
IPerson <- setRefClass("IPerson",fields = list(country = "character"),contains = "Person", methods = list(
  
  dec_age = function(x) {
    if((age - x)<0)  stop("Age cannot be negative")
    age <<- age - x
  }
))

obj <- IPerson(name = "John", age = 21, GPA = 3.5, country="India")
obj$dec_age(5)
obj$age