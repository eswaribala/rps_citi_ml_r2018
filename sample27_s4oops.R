#define s4 class
setClass("student", slots=list(name="character", age="numeric", GPA="numeric"))
#create object
obj <- new("student",name="Jayanth", age=21, GPA=3.5)
setMethod("show",
          "student",
          function(object) {
            cat(object@name, "\t")
            cat(object@age, "years old\t")
            cat("GPA:", object@GPA, "\n")
          }
)

obj #it calls show method
isS4(obj)
#accessing slot directly
obj@name
#modifying slot
obj@name<-"Anuj"
obj@name

#inheritance
# inherit from student
setClass("InternationalStudent",
         slots=list(country="character"),
         contains="student"
)
s <- new("InternationalStudent",name="John", age=21, GPA=3.5, country="France")
show(s)
