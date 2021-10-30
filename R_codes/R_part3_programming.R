#### functon ####
# function_name <- function(arguments){
#
# }
plus_3 <- function(x){
  x+3
}
plus_3(5)
plus_3(10.2)
plus_3(-8)
plus_3("apple")

multiply_then_square <- function(x, y){
  temp <- x * y
  result <- temp*temp
  return(result)
}

multiply_then_square(2, 3)
multiply_then_square(2.2, 0)
multiply_then_square(2.2, -1.1)

# scope of variables
x <- 4
result <- 10
multiply_then_square(2, 3)
x
result


# invalid number of argument
multiply_then_square(2.2)
multiply_then_square(1.1, 2.2, 3.3)


multiply_then_square_default <- function(x, y=5){
  temp <- x * (y+1)
  result <- temp*temp
  return(result)
}
multiply_then_square_default(2, 3)
multiply_then_square_default(y=2, x=3)
multiply_then_square_default(2)


#### If ... else ####
# if ( condition ) {
      # Only execute when the condition is TRUE
# }

if (3 > 1) {
  print("Correct!")
}
# [1] "Correct!"

if (3 == 1) {
  print("Incorrect")
}
> # No output

# if ... else
# if ( condition ) {
      # Only execute when the condition is TRUE
# } else {
      # Otherwise execute this
# }
x <- 5
if (x > 3 & x*2 == 10) {
  print("Great")
} else {
  print("Fail")
}
# [1] "Great"
# TRYME: try it with different value of x.


x <- 8
if (x >= 10) {
  print("x is greater than or equal to 10")
} else if (x > 5) {
  print("x is greater than 5, but less than 10")
} else {
  print("x is less than 5")
}
# [1] "x is greater than 5, but less than 10"
# TRYME: it with different value of x.





#### for loop ####
# for (iterator in set of values) {
# do something here
# }

for (i in c(1,3,7)){
  print(i)
}
# [1] 1
# [1] 3
# [1] 7


for (anything in c("A", "apple", 3, TRUE, 8.3) ) {
  print(anything)
}
# [1] "A"
# [1] "apple"
# [1] "3"
# [1] "TRUE"
# [1] "8.3"



for (temp in 1:5) {
  if (temp > 3) {
    print(paste(temp, "Greater than three"))
  } else {
    print(paste(temp, "Less or equal to two"))
  }
}
# [1] "1 Less or equal to two"
# [1] "2 Less or equal to two"
# [1] "3 Less or equal to two"
# [1] "4 Greater than three"
# [1] "5 Greater than three"
