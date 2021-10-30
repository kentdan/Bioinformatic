#### function with loop, if...else ####

# This function will square even number and square root odd number
# Logic: 1) Go through each element in args
# 2) Check whether is even or odd
# '%%' indicates 'x mod y'
# ?"%%"
# 3) Apply different calculation
# 4) store in "result" vector.
sq_even_and_sqrt_odd <- function(args){
  result <- vector()      # variable for storing results.
  args_n <- length(args)  # Number of elements in args.
  for(i in 1:args_n){     # loop through each index 1,2,3,...,args_n.
    number <- args[i]     # get ith position from args.
    is_even <- number %% 2 == 0  # check if it's even number. Divided by 2 with remainder of 0
    if( is_even ){        # even number
      result[i] <- paste("Square", number, "=", number*number)
    } else {              # odd number
      result[i] <- paste("Square root", number, "=", sqrt(number))
    }
  }
  return(result)
}


sq_even_and_sqrt_odd(1:10)
sq_even_and_sqrt_odd(c(1, 3, 8, 23, 93, 105, 932, 30, 65))



#### Take 2: Advance approach. ####
# Note: This method utilise vectorization.
# Please make sure you understand how does vectorization work in R before looking at this example.
# This function will square even number and square root odd number
sq_even_and_sqrt_odd_vector <- function(args){
  result <- vector()
  index_even <-  args %% 2 == 0   # Index of all even numbers
  number_even <- args[index_even] # extract even numbers
  result[index_even] <- paste("Square", number_even, "=", number_even^2)

  number_odd <- args[!index_even] # # extract odd numbers
  result[!index_even] <- paste("Square root", number_odd, "=", sqrt(number_odd))
  return(result)
}

sq_even_and_sqrt_odd_vector(1:10)
